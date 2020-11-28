@ignore
Feature: user Details 

Background: 
	Given def expectedOutput = read('../data/result.json') 
	
Scenario: request user 3 details
	Given url 'https://reqres.in/api/users/3' 
	When method GET 
	Then status 200 
	And def myfun = function(){return 'Hello'} 
	And def returnedData = call myfun 
	Then print 'returnedData--', returnedData 
	And def myfun2 =
	"""
	function(){
		return 'myData'
	}
	"""
	And def returnedData2 = call myfun2
	Then print 'returnedData2--', returnedData2
	
	