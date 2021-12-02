Feature:  Validate Get request
  Scenario: verify current weather data
    Given url 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=794a59e862f8a2440594d84d7356a880'
    When method get
    Then status 200

#    Assert with response description with Valid input
    And match response.weather[0].description contains 'few clouds'

#   Assert with response description with Invalid input
    And match response.weather[0].description !contains 'light intensity drizzle'

#   Assert response description with String
    And match response.weather[0].description == '#string'

#    Assert response description with number
#    And match response.weather[0].description == '#number'

  Scenario Outline: verify current weather date
    Given url '<url>'
    When method get
    Then status 200

    Examples:
      |url|
      |http://api.openweathermap.org/data/2.5/weather?q=London&appid=794a59e862f8a2440594d84d7356a880|
