Feature: API authentication (To generate Access Token Generation)
  Scenario: Authentication Test
    * url "https://reqres.in/api/register"
    * def params =
    """
    {
      'email': 'eve.holt@reqres.com',
       'password': 'pistol'
    }
    """

    And form fields params
#    And form field email = 'eve.holt@reqres.in'
#    And form field password = 'pistol'
    When method post
    Then status 400
    Then print response

    * def accessToken = response.token
    Then print  "Access Token is : - " , accessToken

