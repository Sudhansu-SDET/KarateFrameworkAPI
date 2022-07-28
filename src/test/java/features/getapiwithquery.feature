Feature: Get API with Query Parameter

  Scenario: Get all the active users
    * def query = {status:'active',gender:'male',id:'4061'}
    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200

    * print response

  Scenario: Get all the active users - 2
    * def query = {status:'active'}
    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200

    * def maxUserAllowed = 10
    * def jsonresponse =  response
    * print jsonresponse
    * def userCount = response.data.length
    * print userCount
    * match userCount == maxUserAllowed