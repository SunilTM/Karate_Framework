Feature: Get the details of user 2

     Background:Set url
     * url 'https://reqres.in/api/'

    Scenario: get the details of user 2
    Given path 'users/2'
    When method get
    Then status 200


      Scenario: Create a Person
        Given path 'users'
        And request
        """
        {
         "name": "morpheus",
         "job": "leader"
        }
         """
        When method post
        Then status 201
        Then match response == "#object"
        Then match response.name == "morpheus"