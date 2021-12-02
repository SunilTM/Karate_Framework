Feature: File Upload
  Background:
    * url 'https://filebin.net'

  Scenario: Upload File
    Given path '/'
    And header Content-Type = "image/png"
    And request karate.read('file:src/test/java/EventHandling/Screenshot (126).png')
    When method POST
    Then status 201