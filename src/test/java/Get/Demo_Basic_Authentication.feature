Feature:
  Scenario: To get the incedents
  * url "https://reqres.in/api/register"

    Given url 'toke'
    And form field grant_type = 'client_credentials'
    And form field client_id = ''
    And form field client_secret = ''
    When method post
    Then status 200

    * def accessToken = response.access_token

    And header Authorization = call read('Basic_Auth.js') { username: 'john', password: 'secret' }