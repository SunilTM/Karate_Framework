Feature: Get Auth Account data.
  Background: Background
    * def cookieData = call read('Login.feature')


  Scenario: Yes
    * configure cookies = cookieData
    * url 'https://app.vwo.com/'
    Given path 'account?accountId=531510'
    When method get
    Then print response.name
    Then status 200
    Then match response.id = '531510'