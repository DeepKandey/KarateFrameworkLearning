@ignore
Feature: user Details 

Background: 
	Given def expectedOutput = read('../data/result.json') 
	And url 'https://reqres.in/api/users'
	
Scenario: request user 2 details 
	Given path 2 
	When method GET 
	Then status 200 
	Then print response 
	And match response == expectedOutput[0] 
	And match response.data.id == 2 
	And match response.data.last_name !=null 
	Given def job_code = response.data.jobcode 
	And match job_code == null 
	And def sleep = function(millis){ java.lang.Thread.sleep(millis) }
    #And eval sleep(10000)