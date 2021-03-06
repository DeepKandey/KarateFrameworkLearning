@ignore
Feature: Data Driven Test 

Background: 
	Given url 'http://dummy.restapiexample.com' 
	
Scenario Outline: create user details 
	Given path 'api/v1/create' 
	And request {"name":<name>,"salary":<salary>,"age":<age>} 
	When method POST 
	Then status 200 
	Then print 'response1--', response 
	And def result = response.data.id 
	Then print 'user_id--', response.data.id 
	
	Given path 'api/v1/employee/'+ result 
	And method GET 
	Then  status 200 
	Then  print 'response2--', response 
	And match response.data contains {id:'#(result)'} 
	
	Examples: 
		|name|salary|age|
		| test1|123|23|