Feature: Data Driven Test

  Scenario : Create User details
  * url 'https://reqres.in/'

    Given path 'api/users'
#    If name is Mahadev then change job to Engineer otherwise retain the same job
#    Ternary Operation
    * def new_job = name == 'Doctor' ?  'Engineer' : job

    And header Content-Type = 'csv'
    And request karate.readAsString('DataFetchfromCsv.csv')
    And request  {"name": <Name>,"job": <newJob>}
    * print 'The request payload is' + {"name": <Name>,"job": <newJob>}
    When method post
    Then status 201
    And print response.job ==new_job

#    Examples:
#
#    |read('DataFetchfromCsv.csv')|