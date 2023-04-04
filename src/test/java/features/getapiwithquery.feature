#Page -  4

Feature: Get API with Query Parameter

  Scenario: Get all the active male users
    * def query = {status:'active',gender:'male'}
      #https://gorest.co.in/public/v1/users?status=active&gender=male
    Given url baseUrl+'/public/v1/users'
    And params query
    When method GET
    Then status 200

    * print response

  Scenario: Get all the active users - 2
    * def query = {status:'active'}
    Given url baseUrl+'/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response.data[0].email
    * def maxUserAllowed = 10
    * def userCount = response.data.length
    * match userCount == maxUserAllowed