@ignore 
Feature: API Authentication 

Background: 
	Given url 'https://reqres.in/api/register' 
	
Scenario: 
	Given path 'token' 
	And form field grant_type = 'client_credentials' 
	And form field client_id = '' 
	And form field client_secret = '' 
	When method POST 
	Then status 201 
	
	Given def accessToken = response.access_token 
	Given path '' 
	And header Authorization = 'Bearer'+ accessToken 
	When method GET 
	Then status 200 
