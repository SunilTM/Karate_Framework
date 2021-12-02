
Feature: Conditional Logic

  @ignore
  Scenario: Sample Test1
    * def filename ='abc' == 'def' ? 'Sample1.feature' : 'Sample2.feature'
    * print 'filename :- ',filename
    * def result =  call read(filename)

  @ignore
  Scenario: Sample Test2
    * def resopnseCode = 404;
#    * def result = responseCode ==404 ? {} :karate.call('sample1.feature')
    * def result = responseCode ==200 ? karate.call('sample1.feature') : karate.call('sample2.feature')
    Then print result

  @ignore
  Scenario: Sample Test3
    * def resopnseCode = 200;
    * if (responseCode == 200) karate.call('Sample1.feature')
    
    
    Scenario: Sample Test4
      * def resopnseCode = 200;
      * def myFunction =
      """
      function(){
      return 'Hello'
      }
      """
      * if (responseCode == 200) myFunction()
      * def result = responseCode == 200 ? myFunction() : {}
      Then print result


