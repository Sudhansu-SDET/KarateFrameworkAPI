# new feature
# Tags: optional
#Page -  9
Feature: Create user using post api

  Background:
    * url baseUrl
    * def requestPayLoad = read('classpath:src/test/resources/Payload/User.json')

  Scenario: Create a user with given data

    * print requestPayLoad
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ tokenID
    When method POST
    Then status 201
    Then match response.name == 'johny11'
    * print response.id

