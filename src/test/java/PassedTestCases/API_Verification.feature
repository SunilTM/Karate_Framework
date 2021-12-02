Feature: TODO API Verificator

   Scenario: Verify First Todo is equals to "delectus aut autem"
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    When method get
    Then status 200
    And match response == { userId: 1, id: 1, title: "delectus aut autem", completed: false }

#    set response
    And set response.title = "Dell"
    And set response.id = 25
    And print response
    And match response == {  "id": 25,  "completed": false,  "title": "Dell",  "userId": 1  }

