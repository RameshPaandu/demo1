Feature: Put API Demo

  Scenario: PUT demo 1
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "Raam", "job": "QA Engineer"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
