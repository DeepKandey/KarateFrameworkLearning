Feature: Conditional Logic

Scenario: test1
* def fileName = 'abc' == 'abc' ? 'LoginUser.feature' : 'sample2.feature'
* print 'fileName--' , fileName
* def result = call read(fileName)

Scenario: test2
* def result = 'abc' == 'bca' ? karate.call('LoginUser.feature') : 'sample2.feature'
