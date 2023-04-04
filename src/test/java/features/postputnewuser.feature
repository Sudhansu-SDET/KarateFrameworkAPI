# new feature
# Tags: optional
#page - 11

Feature: Create and then update user using post call and put call

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

  Scenario: Create a user with given data , then  update the details
    # create user using post call
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ tokenID
    When method POST
    Then status 201
    Then match response.name == 'johny11'
    * print response

    # fetch user id from above post call
    * def userID = response.id

    # update user using put call
    * def requestPutPayload =
    """
    {
      "status":"inactive"
    }
    """
    Given path '/public/v2/users/'+userID
    And request requestPutPayload
    And header Authorization = 'Bearer '+ tokenID
    When method PUT
    Then status 200
    * print response
    * match response.status == requestPutPayload.status
    * match response.id == userID