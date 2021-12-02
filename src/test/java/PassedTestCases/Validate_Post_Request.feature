Feature:  Validate Post request
  Scenario Outline: Verify dummy sample rest api post request
    Given url '<url>'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 200

     And set response.name = "Ramesh"+
     And print response
     And match response.name contains 'Ramesh'



   Examples:
    |url|
    |http://dummy.restapiexample.com/api/v1/create|


