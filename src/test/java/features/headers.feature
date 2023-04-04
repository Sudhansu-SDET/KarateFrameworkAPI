Feature: Get API Header Feature check

  Scenario: pass the user request with headers_Part1
    Given header Content-Type = 'application/json; charset=utf-8'
    And header Connection = 'Keep-Alive'
    And header User-Agent = 'PostmanRuntime/7.29.2'
    And header Authorization = 'Bearer b99104b8042cf7a3b564e28767e46d53d68b7b150506a96720fce0e3261e42b3'

    When url baseUrl+'/public/v1/users'
    And path '711128'
    When method GET
    Then status 200
    * print response


  Scenario: Pass user request with multiple headers_Part2
    * def requestHeaders = {Content-Type : application/json; charset=utf-8,User-Agent : 'PostmanRuntime/7.29.2',Connection : 'keep-alive'}
    Given headers requestHeaders
    Given url baseUrl+'/public/v1/users'
    And path '711128'
    When method GET
    Then status 200
    * print response

  Scenario: Pass user request with multiple headers_Part3
    * configure headers = {Content-Type : application/json; charset=utf-8,User-Agent : 'PostmanRuntime/7.29.2',Connection : 'keep-alive'}
    Given url baseUrl+'/public/v1/users'
    And path '711128'
    When method GET
    Then status 200
    * print response