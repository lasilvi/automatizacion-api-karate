@crud
Feature: API 11 - Create/Register User Account
  POST https://automationexercise.com/api/createAccount
  Crea una nueva cuenta de usuario con datos enviados como form fields.

  Background:
    * url baseUrl

  Scenario: Crear usuario exitosamente
    Given path '/createAccount'
    And form field name = userName
    And form field email = userEmail
    And form field password = userPassword
    And form field title = userTitle
    And form field birth_date = userBirthDay
    And form field birth_month = userBirthMonth
    And form field birth_year = userBirthYear
    And form field firstname = userFirstName
    And form field lastname = userLastName
    And form field company = userCompany
    And form field address1 = userAddress1
    And form field address2 = userAddress2
    And form field country = userCountry
    And form field zipcode = userZipcode
    And form field state = userState
    And form field city = userCity
    And form field mobile_number = userMobileNumber
    When method post
    Then status 200
    And match response contains { responseCode: 201 }
    And match response.message == 'User created!'
