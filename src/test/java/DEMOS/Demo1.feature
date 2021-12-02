Feature: JSON Schema Validation

  Scenario: Get a single user and verify JSON fields
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then match response == '#object'
    * def jsonschemaExpected =
     """
      {
      "data":{
          "id": '#number',
           "email": '#string',
           "first_name": '#string',
           "last_name": '#string',
            "avatar": '#string'
          },
          "support": {
              "url": "#string",
                "text": "#string"
              }
          }
     """
    * match response == jsonschemaExpected

