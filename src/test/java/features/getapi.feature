Feature: Get API Feature with Path

  Scenario: Get user details positive
    Given url baseUrl+'/public/v1/users'
    And path '711128'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def actualName = jsonResponse.data.name
    * print actualName
    * print baseUrl
    * match actualName == 'Amritambu Guha'


  Scenario: Get user details negative
    Given url baseUrl+'/public/v1/users'
    And path '9999'
    When method GET
    Then status 404
    * print response
    * def jsonResponse = response
    * print jsonResponse.data.message

