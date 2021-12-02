@ignore
Feature: Call to token Generation feature
  Background: 
    * def myFeature = call read('Basic_Authentication_2.feature'){email: 'eve.holt@reqres.in', password: 'pistol'}
    * def authToken = myFeature.accessToken

    Scenario: Post Call 
      When url 'https://reqres.in/api/users?page=2'
      And header Authorization = 'authToken'
      When method get
      Then status 204
      