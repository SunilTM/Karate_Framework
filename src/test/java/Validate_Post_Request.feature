Feature:  Validate Post request
  @postExample
  Scenario Outline: Verify dummy sample rest api post request
    Given url '<url>'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 200

    #Call one feature file into onother feature file
    And def OtherResponse = call read ('classpath : java/Reusable_Function.feature')
    Then print otherResponse.des




    Examples:
      |url|
      |http://dummy.restapiexample.com/api/v1/create|