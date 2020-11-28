@ignore
Feature: User login

Background: 
	Given def jsonPayload = {"email": "eve.holt@reqres.in","password": "cityslicka"} 
	And url 'https://reqres.in/api/login' 
	And header Content-Type = 'application/json' 
	
Scenario: create user details 
	And request jsonPayload 
	And headers {Accept: 'application/json'}
	When method POST 
	Then status 200 