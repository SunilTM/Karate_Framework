Feature: HTTP methode Demo
  Scenario: Post method
    Given url 'https://reqres.in/api/users'
    And def reqBody =
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """
    And request reqBody
    When method post
    Then status 201
    And print response