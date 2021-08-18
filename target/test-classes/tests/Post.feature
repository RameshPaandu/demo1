Feature: POST API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  Scenario: Simple Post request demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": "Ramesh", "job": "Tester"}
    When method post
    Then status 201
    And print response

  Scenario: Post request from background demo 2
    Given path '/users'
    And request { "name": "Ramesh", "job": "Tester"}
    When method post
    Then status 201
    And print response

  Scenario: Post request with reponse assertions demo 3
    Given path '/users'
    And request { "name": "Ramesh", "job": "Tester"}
    When method post
    Then status 201
    And match response == {"name": "Ramesh", "job": "Tester","id": "#string","createdAt": "#ignore"}
 
 Scenario: Post request with read json file from background demo 4
    Given path '/users'
    And request { "name": "Ramesh", "job": "Tester"}
    When method post
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response