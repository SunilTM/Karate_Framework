Feature:Demo
    Scenario: Get Delay
      Given url 'https://reqres.in/api/users?delay=3'
      When method get
      Then status 200
      And print response.data[0]

      And set response.data[0].email = "Rameshyadav@abc.com"
      And set response.data[0].first_name = "Ramesh"
      And set response.data[0].last_name = "yadav"

      And print response.data[0]
