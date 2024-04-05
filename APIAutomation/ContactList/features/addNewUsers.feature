@addNewUsers
Feature: addNewUsers

Scenario: Create new user
    Given I get details for current user logged into the system and save details in UserDetailsCache

Scenario: Add new contact to Contact List
    Given I want to login as user using details from UserDetailsCache into the system and save details in LoggedUserDetailsCache
    Then I want to add new contact with details: Name, Surname, 00387123456, Street 1, Street 2, City, Country, to Contact List and save details in AddedContactDetailsCache
    Given I get details for contacts from Contact List and save details in ContactListDetailsCache
    And Validate that contact from AddedContactDetailsCache is added to Contact List in ContactListDetailsCache

Scenario: Remove created contact
    Given I want to delete contact with details in AddedContactDetailsCache
