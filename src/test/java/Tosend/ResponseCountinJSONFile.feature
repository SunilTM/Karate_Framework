Feature: Handling Rest API in Karate Response Count
  
  Background: 
    * url 'https://reqres.in/'
  
  Scenario:
    And path 'api/unknown'
    When method get
    Then status 200
    And print response

    And def count = response.Count
    And print 'Total number of counts : - ' + count