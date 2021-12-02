Feature:
Scenario: Matchers examples
* def jsonBody =
"""
{
 "category": {
    "id": 1,
    "name": "cats"
 },
 "name": "kitty",
 "photoUrls": [
   "www.kitty.com"
  ],
 "tags": [
   {
     "id": 0,
     "name": "sweet"
   }
  ],
 "status": "available"
}
 """
Given url 'https://petstore.swagger.io/v2'
And path 'pet'
And request jsonBody
When method POST
Then status 200
And match response.category == jsonBody.category
And match response.id == '#present'
And match response.name == jsonBody.name
And match responseHeaders['Date'] == '#notnull'
And match each response.tags == {'id': '#number', 'name': '#string'}