@ignore
Feature: user Details 

Background: 
	Given def expectedOutput = read('../data/result.json') 
	Given def result = call read('user2Details.feature')  
	
Scenario: request user 3 details 
	Given url 'https://reqres.in/api/users/3' 
	When method GET 
	Then status 200 
	#Then print response 
	And match response == expectedOutput[1] 
	And match response.data.id == 3 
	And match response.data.last_name !=null 
	Given def job_code = response.data.jobcode 
	And match job_code == null 
	#Then print 'result-----',result