
 Feature: User Details

   Background:
     * def expectedOutput = read(../)

   Scenario: request user details

     Given url url
     When method get
     Then status 200
     And match response == expectedOutput
     Then print url
     Then print authInfo.accessToken
     Then print auth