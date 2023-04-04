# new feature
# Tags: optional
#page - 12

Feature: Create and then delete user using post call and delete call

  Background:
    * url baseUrl
    * def requestPayLoad = read('classpath:src/test/resources/Payload/User.json')
    * def random_string =
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text = text + pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
    * def randomString = random_string(10)
    * set requestPayLoad.email = randomString + "@gmail.com"
    * print requestPayLoad

  Scenario: Create a user with given data and then delete the user
    # create user using post call
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ tokenID
    When method POST
    Then status 201

    # fetch user id from above post call
    * def userID = response.id
    * print userID

    # delete user using delete call
    Given path '/public/v2/users/'+userID
    And header Authorization = 'Bearer '+ tokenID
    When method DELETE
    Then status 204

    #Double check using get call to check user is actually deleted
    Given path '/public/v2/users/'+userID
    And header Authorization = 'Bearer '+ tokenID
    When method GET
    Then status 404
    * print response
    * print response.message
