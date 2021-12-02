Feature: Using JSON Function Data Source i.e. Dynamic method

  Background:
#    * def generator = function(i){ if (i == 20) return null; return { name: 'cat' + i, age: i } }
  * def generator = function(i){ if (i == 20) return null; return { email:'Anil.kumar@reqres.in'+ i,id: i,firstname:'Anil'+ i,lastname: 'Kumar'+ i } }
  Given url 'https://reqres.in/'
  Scenario Outline: Data Driven Testing
    Given path 'api/users?page=2'
    And def request_body =
    """
    {
      "email":'<email>',
      "id":<id>,
      "firstname":'<firstname>',
      "lastname":'<lastname>'
    }
    """
    And request request_body
    When method post
    Then status 201
    And print response
    And match response == {"email": "#string","id": "#number","firstname": "#string","lastname": "#string","createdAt": "#string"}


    Examples:
      |generator|