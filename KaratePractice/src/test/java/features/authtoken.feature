Feature: GET API feature

Scenario: get user details

* print tokenID
Given header Authorization = 'Bearer '+ tokenID
Given url baseUrl+'/public/v2/users/'
And path '7826559'
When method GET
Then status 200
* print response