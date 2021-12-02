#Feature:  Reusable function

  #To run particular get example we have to give command @getExample1
  @getExample
  Scenario: verify current weather data reusability
    Given url 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=794a59e862f8a2440594d84d7356a880'
    When method get
    Then status 200    // Status Code

    And def =response.weather[0].descrption
