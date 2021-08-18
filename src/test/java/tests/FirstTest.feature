Feature: Sample API Tests

  Scenario: Test a simple GET API Tests
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    
    
     Scenario: Added Test a simple GET API Tests
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
