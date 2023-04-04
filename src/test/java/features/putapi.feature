# new feature
# Tags: optional

# new feature
# Tags: optional
#Page -  10
Feature: Create user using put api

  Background:
    * url baseUrl
    * def requestPayLoad =
    """
    {
    "status":"active"
    }
   """
#Updating existing user
  Scenario: Update a user with given data
    Given path '/public/v2/users/719644'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ tokenID
    When method PUT
    Then status 200
    * print response

