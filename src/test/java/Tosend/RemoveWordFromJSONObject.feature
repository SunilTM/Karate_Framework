Feature: Remove word from json file
  Scenario: get method
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    And print response

#    Remove a particular word from JSON object
    And remove response.data.first_name
    And print response

#    Update a particular word in a JSON object
    And set response.data.last_name = "Suresh"
    And set response.data.email = "suresh123@gmail.com "
    And print response