Feature:Fetch Data from csv File
  
  Scenario : Create User details
* url 'https://reqres.in/'

    Given path 'api/users'
    And header Content-Type = 'text/csv'
    And request karate.readAsString('classpath:InputData.csv')
    When method post
    Then status 202
    Then print response