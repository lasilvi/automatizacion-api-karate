@crud
Feature: API 12 - Delete User Account
  DELETE https://automationexercise.com/api/deleteAccount
  Elimina una cuenta de usuario existente usando email y password.

  Background:
    * url baseUrl
    # Primero creamos el usuario para asegurar que exista
    * callonce read('createUser.feature')

  Scenario: Eliminar usuario exitosamente
    Given path '/deleteAccount'
    And form field email = userEmail
    And form field password = userPassword
    When method delete
    Then status 200
    And match response contains { responseCode: 200 }
    And match response.message == 'Account deleted!'
