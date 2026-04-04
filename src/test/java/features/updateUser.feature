@crud
Feature: API 13 - Update User Account
  PUT https://automationexercise.com/api/updateAccount
  Actualiza los datos de un usuario existente usando form fields.

  Background:
    * url baseUrl
    # Primero creamos el usuario para asegurar que exista
    * callonce read('createUser.feature')

  Scenario: Actualizar usuario exitosamente
    * def updatedFirstName = 'UpdatedTest'
    * def updatedLastName = 'UpdatedUser'
    * def updatedCompany = 'UpdatedCompany'

    Given path '/updateAccount'
    And form field name = userName
    And form field email = userEmail
    And form field password = userPassword
    And form field title = userTitle
    And form field birth_date = userBirthDay
    And form field birth_month = userBirthMonth
    And form field birth_year = userBirthYear
    And form field firstname = updatedFirstName
    And form field lastname = updatedLastName
    And form field company = updatedCompany
    And form field address1 = userAddress1
    And form field address2 = userAddress2
    And form field country = userCountry
    And form field zipcode = userZipcode
    And form field state = userState
    And form field city = userCity
    And form field mobile_number = userMobileNumber
    When method put
    Then status 200
    And match response contains { responseCode: 200 }
    And match response.message == 'User updated!'
