# new feature
# Tags: optional

Feature: Validate Authorization using bearer tokens

  Scenario: Static Token ID
    Given header Authorization = 'Bearer ' + tokenID
    Given url baseUrl+'/public/v1/users'
    And path '711128'
    When method GET
    Then status 200
    * print tokenID

