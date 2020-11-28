function fn() {
	var config = {
		url: 'https://reqres.in/api/users?Page=2'
	}
	var env = karate.env
	karate.log("Environment variable value id--", env)
	if (env == 'qa') {
		config.url = 'https://qa.in/api/users?Page=2'
	} else if (env == 'dev') {
		config.url = 'https://dev.in/api/users?Page=2'
	} else {
		//var result = karate.callSingle('classpath:karateDemo/features/LoginUser.feature')
	    //config.authInfo = result;
	}
	return config;
}