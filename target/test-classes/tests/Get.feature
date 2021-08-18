Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

   
  Scenario: Get Demo1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies

  Scenario: Get Demo2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

    
  Scenario: Get Demo3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    
     Scenario: Get Demo4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[1].id == 8
    And match $.data[3].last_name == 'Fields'
    