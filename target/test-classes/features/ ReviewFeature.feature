@Reggression
Feature: New assignment

  Scenario: End 2 end Account creation.
    Given url "https://tek-insurance-api.azurewebsites.net"
    And path "/api/token"
    And request {"username": "supervisor", "password": "tek_supervisor"}
    When method post
    Then status 200
    And print response
    * def generatedToken = response.token
    And print generatedToken
    * def generator = Java.type('tiger.api.FakeDataTest.FakeDataGenerator')
    * def email = generator.getEmail()
    * def FirstName = generator.getFirstName()
    * def LastName = generator.getLastName()
    * def DoB =      generator.getDoB()
    * def Job   = generator.getJob()
    Given path "/api/accounts/add-primary-account"
    And request
      """
      {
      "email": "#(email)",
      "firstName": "#(FirstName)",
      "lastName": "string",
      "title": "#(LastName)",
      "gender": "MALE",
      "maritalStatus": "MARRIED",
      "employmentStatus": "#(Job)",
      "dateOfBirth": "#(DoB)",
      "new": true
      }
      """
    And header Authorization = "Bearer " + generatedToken
    When method post
    And status 201
    * def ID = response.id
    Then print response
    * def generator = Java.type('tiger.api.FakeDataTest.FakeDataGenerator')
    * def country = generator.getCountryName()
    * def city =    generator.getCityName()
    * def countryCode = generator.getCountryCode()
    * def Addressline = generator.getAddressLine()
    * def AddressType = generator. getAddresstype()
    * def State      =  generator.getStateName()
    * def Zipcode    =  generator.getPostalCode()
    Given path "/api/accounts/add-account-address"
    And param primaryPersonId = ID
    And request
      """
      {
      "addressType": "#(AddressType)",
      "addressLine1": "#(Addressline)",
      "city": "#(city)",
      "state": "#(State)",
      "postalCode": "#(Zipcode)",
      "countryCode": "#(countryCode )",
      "current": true
      }
      """
    And header Authorization = "Bearer " + generatedToken
    When method post
    Then status 201
    And print response
    * def generator = Java.type('tiger.api.FakeDataTest.FakeDataGenerator')
    * def phoneNumber = generator.getPhoneNumber()
    * def phoneType   = generator.getPhonType()
    * def phoneExtension = generator.getPhoneExtension()
    Given path "/api/accounts/add-account-phone"
    And param primaryPersonId = ID
    And request
      """
      {
      "phoneNumber": "#(phoneNumber)",
      "phoneExtension": "#(phoneExtension)",
      "phoneTime": "Evening",
      "phoneType": "#(honeType)"
      }
      """
    And header Authorization = "Bearer " + generatedToken
    When method post
    Then status 201
    And print response
    Given path "/api/accounts/add-account-car"
    And param primaryPersonId = ID
    And request
      """
      {
      "make": "Toyata",
      "model": "Highlander",
      "year": "2020",
      "licensePlate": "VIP2022"
      }
      """
    And header Authorization = "Bearer " + generatedToken
    When method post
    Then status 201
    And print response
