# new feature
# Tags: optional

Feature: Create user using post api

  Background:
    * url 'https://gorest.co.in'
    * def requestPayLoad =
    """
    {
    "name":"johny11",
    "email":"johny11@test.org",
    "gender":"male",
    "status":"active"
    }
   """

  Scenario: Create a user with given data

    * print requestPayLoad
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ 'b99104b8042cf7a3b564e28767e46d53d68b7b150506a96720fce0e3261e42b3'
    When method POST
    Then match response.name == 'johny11'
    * print response.id
    * def id = response.id

