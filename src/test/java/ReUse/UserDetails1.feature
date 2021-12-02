Feature:
  Background:
    * def expectedOutput = read('result1.json ')

    Scenario: Request user 2 details
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print response
    And match response == expectedOutput[0]



