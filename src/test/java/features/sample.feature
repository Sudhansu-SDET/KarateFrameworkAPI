# new feature
# Tags: optional
#Page -  1
Feature: Print and declare variables

  Scenario: Hello World scenario
    * print 'Hello Worlds'
    * print 'Hello World2'
    * print baseUrl
    * print tokenID

  Scenario: Declare and Print values
    * def balance = 200
    * def fee = 100
    * def tax = 10
    * print 'total amount is : ' + (balance + fee + tax)
