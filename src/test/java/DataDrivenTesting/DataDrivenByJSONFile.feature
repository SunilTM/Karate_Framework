Feature: Data Driven Test by using JSON file

  Scenario Outline: Data Driven using Examples
    Given url 'https://reqres.in/'
    And path 'api/users?page=2'
    And def request_body =
    """
    {
      "email":"<email>",
      "id":"<id>",
      "firstname":"<firstname>",
      "lastname":"<lastname>"
    }
    """
    And request request_body
    When method post
    Then status 201
    And print response


    Examples:
      | read('DataDrivenJSON.json') |