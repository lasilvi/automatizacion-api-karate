@crud
Feature: API 12 - Eliminar cuenta de usuario

  Background:
    * url baseUrl

  Scenario: Eliminar usuario existente
    Given path '/deleteAccount'
    And form field email = userEmail
    And form field password = userPassword
    When method delete
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'Account deleted!'
