Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v2/users/'
And path '7380118'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.name
* def actId = jsonResponse.id
* def actGender = jsonResponse.gender
* print actName
* match actName == "Narayan Nehru"
* match actId == 7380118
* match actGender == "female"

Scenario: get user details - user not found
Given url baseUrl+'/public/v2/users/'
And path '1'
When method GET
Then status 404