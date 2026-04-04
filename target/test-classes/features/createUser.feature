@crud
Feature: API 11 - Crear cuenta de usuario

  Background:
    * url baseUrl

  Scenario: Crear un nuevo usuario exitosamente
    Given path '/createAccount'
    And form field name = userName
    And form field email = userEmail
    And form field password = userPassword
    And form field title = 'Mr'
    And form field birth_date = '15'
    And form field birth_month = '6'
    And form field birth_year = '1995'
    And form field firstname = 'Test'
    And form field lastname = 'User'
    And form field company = 'TestCompany'
    And form field address1 = 'Calle 123'
    And form field address2 = 'Apto 456'
    And form field country = 'United States'
    And form field zipcode = '12345'
    And form field state = 'California'
    And form field city = 'Los Angeles'
    And form field mobile_number = '3001234567'
    When method post
    Then status 200
    And match response.responseCode == 201
    And match response.message == 'User created!'
