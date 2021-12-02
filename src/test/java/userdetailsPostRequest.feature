Feature: Post call Test
  Background:
    Scenario: Create User Details
      Given url 'https://reqres.in/api/users'
      And request {"name": "morpheus","job": "leader"}
      When method Post
      And status 201
      