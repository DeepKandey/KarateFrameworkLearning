@ignore
Feature: user Details Page2 

Background: 
	Given def expectedOutput = read('../data/result.json') 
	
Scenario: request user details from Page 2 
	Given url url 
	When method GET 
	Then status 200 
	And def data = response.data
	Then print 'data--',data 
	And def myFun = 
		"""
	function(arg){
		return arg.length
	}
	
	"""
	And def myFun2 = 
		"""
	function(arg){
		return arg[0].id
	}
	
	"""
	And def myFun3 = 
		"""
	function(arg){
		for(i=0; i<arg.length; i++){
		if(arg[i].id == 6){
			return arg[i]
		}	
	  }
	}
	
	"""
	And def numberOfUsers = call myFun data 
	And def firstUserID = call myFun2 data 
	And def User6Details = call myFun3 data 
	Then print 'numberOfUsers---', numberOfUsers 
	Then print 'firstUserID---', firstUserID 
	Then print 'User6Details---', User6Details 
	And def foo = {hello:'world',learn:'karate'} 
	And def test = {hello:'world',learn:'karate'} 
	And def test1 = {hello:'world'} 
	And match foo == test
	And match foo != test1
	Then print 'authInfo--', authInfo.response
	* def result = call read('ScenarioCall.feature@tag1')