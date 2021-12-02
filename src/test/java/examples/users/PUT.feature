Feature: CRUD End To End


  Background:
    * url 'https://reqres.in/api/users/2'

  Scenario: crud end to end
    Given path 'person'
    And request {"name": "morpheus","job": "zion resident"}
    When method put
    Then status 200

#    Scenario: Navigate to GET
#      Given path 'person'
#      When method get
#      Then status 404
#      And match response == {"name":"morpheus","job":"zion resident","updatedAt":"2021-11-11T13:31:18.924Z"}




