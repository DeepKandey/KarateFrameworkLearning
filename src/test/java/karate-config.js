function fn(){
  var config = {
     url : 'https://reqres.in/api/users?Page=2'
  }
  var env = karate.env
  karate.log("Environment variable value id--", env)
  if(env == 'qa'){
     config.url = 'https://qa.in/api/users?Page=2'
  }
  return config;
}