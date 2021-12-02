Feature: Data Driven Test

  Background:
    * url 'https://reqres.in/'
  Scenario: Get the Data present in.
    Given path  'api/users'
    And request {"name": "morpheus","job": "leader"}
    When method Post
    And status 201

