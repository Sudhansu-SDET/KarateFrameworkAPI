# new feature
# Tags: optional

Feature: Print Hello world

  Scenario: Hello World scenario
    * print 'Hello Worlds'
    * print baseURL

  Scenario: Declare and Print values
    * def balance = 200
    * def fee = 100
    * def tax = 10
    * print 'total amount is : ' + (balance + fee + tax)
