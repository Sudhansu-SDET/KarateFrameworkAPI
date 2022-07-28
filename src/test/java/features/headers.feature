Feature: Get API Header Feature check

  Scenario: Pass user request with headers_Way1
    Given header Accept-Encoding = 'gzip, deflate, br'
    And header Connection = 'keep-alive'
    When url 'https://gorest.co.in/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response


  Scenario: Pass user request with headers_Way1
    * def requestHeaders = {Accept-Encoding : 'gzip, deflate, br',Connection : 'keep-alive'}
    Given headers requestHeaders
    And header Connection = 'keep-alive'
    When url 'https://gorest.co.in/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response