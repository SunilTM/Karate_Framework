Feature: fetching User Details

  Scenario: testing the get call for User Details

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    Then print response

    #Verifying the JSON response by providing same in feature file
    And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}

    #Reading the file ExpectedOutput.json and storing same response in variable expectedResult
    Given expectedResult= read ('./resources/ExpectedOutput.json')

    #Asserting the Actual Response with the Expected Response
    And match response == expectedResult