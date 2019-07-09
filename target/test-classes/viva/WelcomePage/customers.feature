Feature: Customers
  Background:
    * url apiHost + '/api/v1'
    * configure headers =
    """
    {
        'app_id': 'fb844bc5',
        'app_key': '1cfc905099d39960274b6c2cd5a451b8'
    }
    """
    * configure ssl = true

  Scenario: Get Customer details
    Given path '/customers/440771'
    When method get
    Then status 200