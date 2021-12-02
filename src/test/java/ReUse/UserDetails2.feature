Feature:
  Background:
    * def expectedOutput = read('result1.json')
    * def result = call expectedOutput

  Scenario: Request user 3 details
    Given url 'https://reqres.in/api/users/3'
    When method get
    Then status 200
#    Then print response
    And match response == expectedOutput[1]
    Then print result
