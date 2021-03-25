Feature: Order a coffee

  In order to save time when I pick up my morning coffee
  As a coffee love
  I want to be able to order my coffee in advance

  Scenario: Buyer orders a coffee when they are close to the coffee shop
    Given Cathy is 250 metres from the coffee shop
    When Cathy orders a large cappuccino
    Then Barry should receive the order
    And Barry should know that the order is High


  Scenario Outline: Buyer orders a coffee when they are close to the coffee shop
    Given Cathy is <distance> metres from the coffee shop
    When Cathy has ordered a large cappuccino
    Then Barry should receive the order
    And Barry should know that the order is <status>
    Examples:
      | distance | status |
      | 20       | Urgent |
      | 200      | Urgent |
      | 201      | High   |
      | 600      | Normal |