Feature: CRUD Operation
  Scenario: Get method
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    And print response
    
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
      
      Scenario: Put method
        Given url 'https://reqres.in/api/users/2'
        And def reqBody =
        """
        {
        "name": "morpheus",
        "job": "zion resident"
        }
        """
        And request reqBody
        When method put
        Then status 200
        And print response
        
        Scenario: Delete method
          Given url 'https://reqres.in/api/users/2'
          And def reqBody =
          """
          {
        "name": "morpheus",
        "job": "zion resident"
        }
          """
          And request reqBody
          When method delete
          Then status 204
          And print response
        
        