@crud
Feature: API 13 - Actualizar cuenta de usuario

  Background:
    * url baseUrl

  Scenario: Actualizar datos del usuario existente
    Given path '/updateAccount'
    And form field name = userName
    And form field email = userEmail
    And form field password = userPassword
    And form field title = 'Mrs'
    And form field birth_date = '20'
    And form field birth_month = '3'
    And form field birth_year = '1990'
    And form field firstname = 'Updated'
    And form field lastname = 'User'
    And form field company = 'UpdatedCompany'
    And form field address1 = 'Carrera 456'
    And form field address2 = 'Oficina 789'
    And form field country = 'Canada'
    And form field zipcode = '67890'
    And form field state = 'Ontario'
    And form field city = 'Toronto'
    And form field mobile_number = '3009876543'
    When method put
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'User updated!'
