@ignore
Feature: check returned users by the API

  Background: 
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer NFsy75Qo3gD8owfvnhan1fR5njSbItF8I6vu'

  Scenario: list all the users having name with John
    Given path 'public-api/users'
    And param name = 'Arora'
    When method GET
    Then status 200
    Then def userResponse = response
    And match userResponse.data[*].name contains ["Kalyani Arora"]
