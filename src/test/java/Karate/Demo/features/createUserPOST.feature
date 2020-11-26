@ignore
Feature: post call test 

Background: 
	Given def jsonPayload = read('../data/createUser.json') 
	And url 'https://reqres.in/api/users' 
	And header Content-Type = 'application/json' 
	
Scenario: create user details 
	And request jsonPayload 
	And headers {Accept: 'application/json'}
	And param delay = 3
	When method POST 
	Then status 201 
	Then print "response----",response