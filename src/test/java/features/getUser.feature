@crud
Feature: API 14 - Consultar usuario por email

  Background:
    * url baseUrl

  Scenario: Consultar detalle de usuario por email
    Given path '/getUserDetailByEmail'
    And param email = userEmail
    When method get
    Then status 200
    And match response.responseCode == 200
    And match response.user.email == userEmail
    And match response.user.name == userName
