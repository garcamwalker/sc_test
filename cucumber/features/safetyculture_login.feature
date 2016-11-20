@wip
Feature: Safety Culture login
  As a user
  I want to log into my Safety Culture account
  So that I can navigate the dashboard

  Background:
    Given I am on the Safety Culture log in page

  Scenario Outline: User is directed to dashboard on successfully logging in
    When I enter a <correct email> and <correct password>
    And I select Log in
    Then I am taken to the Safety Culture dashboard

    Examples: of user email and password:
    | correct email          | correct password |
    | garcamwalker@gmail.com | password123      |

  Scenario Outline: Validation message on log in - missing password
    When I enter a <correct email> without a password
    And I select Log in
    Then I see a password validation message

    Examples: of user email
    | correct email          |
    | garcamwalker@gmail.com |

  Scenario Outline: Validation message on log in - missing email
    When I enter my <password> without an email address
    And I select Log in
    Then I see an email validation message

    Examples: of passwords
    | password    |
    | password123 |

  Scenario Outline: Erro message on Log in - incorrect login details
    When I enter an <incorrect email> or <incorrect password>
    And I select Log in
    Then I see a link to reset my password

     Examples: of user email and password:
    | incorrect email        | incorrect password |
    | reklawmacrag@gmail.com | 321password        |
