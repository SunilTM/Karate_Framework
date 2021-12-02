Feature: OAuth2 Positive Implementation
  Background: 
    Given url 'https://github.com/'
    
    Scenario: OAuth2 Flow
      Given path 'SunilTM/Karate.git'
      And header Authorization = 'Bearer' + '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'
      When method get
      Then status 200
      And print response