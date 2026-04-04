@crud
Feature: API 14 - Get User Account Detail by Email
  GET https://automationexercise.com/api/getUserDetailByEmail
  Consulta los detalles de un usuario registrado por su email.

  Background:
    * url baseUrl
    # Primero creamos el usuario para asegurar que exista
    * callonce read('createUser.feature')

  Scenario: Consultar usuario por email exitosamente
    Given path '/getUserDetailByEmail'
    And param email = userEmail
    When method get
    Then status 200
    And match response contains { responseCode: 200 }
    And match response.user.email == userEmail
    And match response.user.name == userName
