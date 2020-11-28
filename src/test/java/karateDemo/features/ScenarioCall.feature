@ignore
Feature: call scenario from another scenario

@tag1 @ignore
Scenario:
* print 'this is 1st test'

@tag2
Scenario:
* print 'this is 2nd test'
* def result = call read('ScenarioCall.feature@tag1')