Feature: Read and Verify from CSV

  Background: Read From CSV
    * def expectedData = karate.read("file:src/test/java/DEMOS/data.csv")

    Then print response
  Scenario: Verify data
    * match expectedData ==
        """
       [
 {
   "id": 1,
   "name": "Prashant"
 },
 {
   "id": 2,
   "name": "Sharma"
 },
 {
   "id": 3,
   "name": "Lucky"
 }
]
        """