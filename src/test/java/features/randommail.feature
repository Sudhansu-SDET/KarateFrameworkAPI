# new feature
# Tags: optional

Feature: Create user using post api

  Background:
    * url 'https://gorest.co.in'
    * def random_string =
    """
      function(s){
        var text="";
        var pattern="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        for(var i=0;i<s;i++){
          text = text + pattern.charAt(Math.floor(Math.random() * pattern.length()));
          return text;
        }
      }
    """
    * def randomString = random_string(10)
    * print randomString

    * def requestPayLoad =
    """{
    "name":"johny11",
    "gender":"male",
    "status":"active"
    }
    """
  * requestPayLoad.email = randomString + "@gmail.com"

    * print requestPayLoad


  Scenario: Create a user with given data

    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer '+ 'b99104b8042cf7a3b564e28767e46d53d68b7b150506a96720fce0e3261e42b3'
    When method POST
    Then match response.name == 'johny11'
    * print response.id
    * def id = response.id