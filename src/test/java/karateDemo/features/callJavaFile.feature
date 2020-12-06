@ignore 
Feature: Java Functions 

Scenario: call java method 
	Given def javaDemo = Java.type('karateDemo.features.JavaFunctions') 
	And def nonstaticFunctionsResult = new javaDemo().nonstaticFunctions(); 
	And def argumentCheckResult = new javaDemo().argumentCheck("Deepak"); 
	Then print argumentCheckResult 
	And match argumentCheckrRsult == 'Hello Deepak' 
	And def staticFunctionsResult = javaDemo.staticFunctions(); 
	
	Given url 'https://reqres.in/api/users?page=2' 
	When method GET 
	Then status 200 
	And def data = response.data 
	And def myFun = 
		"""
    function(arg){
	 for(i=0; i< arg.length; i++){
		 if(arg[i].id == 9){
			return arg[i].email
		}
	}
}
"""
	And def result = call myFun data 
	And def javaDemo2 = Java.type('karateDemo.features.WriteData') 
	And def result3 = new javaDemo2().writeData(result); 
	