@ignore
Feature: Data Driven Test 

Background: 
	Given url 'http://dummy.restapiexample.com' 
	
Scenario Outline: create user details 
	Given path 'api/v1/create' 
	And request {"name":<name>,"salary":<salary>,"age":<age>} 
	When method POST 
	Then status 200 
	Then print 'createUser response--', response 
	And def employeeId = response.data.id 
	Then print 'user_id--', response.data.id 
	
	Given path 'api/v1/employee/'+ employeeId 
	And method GET 
	Then status 200 
	Then print 'new Employee Details--', response 
	#And match response.data contains {id:'#(result)'} 
	
	Examples: 
		|name|salary|age|
		|test23|123| 23|