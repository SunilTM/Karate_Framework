Feature: GraphQL


  Scenario: GraphQL
    Given url 'https://api.graphql.jobs/'

    Given text query =
    """
    query {
        jobs{
            id,title
        }
    }
    """

    And request { query: '#(query)' }
    When method POST
    Then status 200
    Then print response.data.jobs[76].title
    Then match $ == "#object"

    Then match $.data.jobs[76].title == "Backend Engineer"
