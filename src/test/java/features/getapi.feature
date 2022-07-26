
Feature: Get API Feature

  Scenario: Get user details positive
    Given url 'https://gorest.co.in/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def actualName = jsonResponse.data.name
    * print actualName
    * match actualName == 'Girik Banerjee CPA'
    

  Scenario: Get user details negative
    Given url 'https://gorest.co.in/public/v1/users'
    And path '9999'
    When method GET
    Then status 404
    * print response