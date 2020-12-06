@ignore
Feature: Conditional Logic

Background:
* configure afterScenario =
"""
function(){
  var info = karate.info
  karate.log(info)
  if(info.errorMessage){
     karate.call('Logic.feature')
  }
}
"""

Scenario: test1
* def fileName = 'abc' == 'abc' ? 'LoginUser.feature' : 'sample2.feature'
* print 'fileName--' , fileName
* def result = call read(fileName)

Scenario: test2
* def result = 'abc' == 'bca' ? karate.call('LoginUser.feature') : karate.call('sample2.feature')