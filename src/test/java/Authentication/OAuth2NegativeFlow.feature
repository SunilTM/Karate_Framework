Feature: OAuth2 Negative Implementation
  Background:
    Given url 'https://github.com/'

  Scenario: OAuth2 Flow -Invalid credentials
    Given path  'SunilTM/Karate1.git'
    And header Authorization = 'Bearer' + '86293e8bc9791c3a4632137330b0622c2cbefc70'
    When method get
    Then status 404
    And print response
