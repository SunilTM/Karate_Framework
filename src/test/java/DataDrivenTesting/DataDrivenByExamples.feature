Feature: Data Driven Test by using Examples (Cucumber Style)
  
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
    |email|id|firstname|lastname|
    |suresh.nair@reqres.in      | 1 |Suresh |Nair|
    |Mahesh.patil@reqres.in     | 2 |Mahesh |Patil|
    |Ramesh.kulkarni@reqres.in  | 3 |Ramesh |Kulkarni|