# new feature
# Tags: optional

Feature: Create user using post api

  Background:
    * url baseUrl
    * def requestPayLoad =
    """
    {
    "name":"johny11",
    "email":"johny13@test.org",
    "gender":"male",
    "status":"active"
    }
   """

  Scenario: Create a user with given data

    * print requestPayLoad
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ tokenID
    When method POST
    Then status 201
    Then match response.name == 'johny11'
    * print response.id

