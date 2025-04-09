Feature: GET API with Query Parameters

Scenario: get all female users
* def query = {gender:'female'}
Given url baseUrl+'/public/v2/users/'
And params query
When method GET
Then status 200
* print response

Scenario: get all female users with status active
* def query = {gender:'female', status:'active', id:23}
Given url baseUrl+'/public/v2/users/'
And params query
When method GET
Then status 200
* print response

Scenario: get all female users with status active
* def query = {status:'active'}
Given url baseUrl+'/public/v2/users/'
And params query
When method GET
Then status 200
* def jsonResponse = response
* print jsonResponse
* def userCount = jsonResponse.length
* print userCount
* match userCount ==10