Feature:Basic Authentication with Positive flow
  Scenario: Basic validation
    And def basicAuthFunction =
    """
    function(username,password) {
        var temp = username + ':' + password;
        var Base64 = Java.type('java.util.Base64');
        var encoded = Base64.getEncoder().encodeToString(temp.getBytes());
        return 'Basic ' + encoded;
        }
    """
    Given url 'https://postman-echo.com'
    And path 'basic-auth'
    And def username = 'postman'
    And def password = 'password'
    And header Authorization = basicAuthFunction(username,password)
    When method get
    Then status 200
    And print response