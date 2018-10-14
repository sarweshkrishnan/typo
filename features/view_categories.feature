Feature: View Categories
  As an admin
  I want to view the Categories page to create/edit categories
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  When I follow "Categories"

Scenario: Categories page should be visible
  Then I should see "Categories"
  And I should see "Permalink"
  And I should see "Keywords"
  And I should see "Description"

Scenario: Admin should be able to create new category
  When I fill in "Name" with "Test"
  And I fill in "Description" with "Test Category"
  And I press "Save"
  Then I should see "Category was successfully saved."
  
Scenario: Admin should be able to edit existing category
  When I follow "General"
  Then I fill in "Description" with "Test Category"
  And I press "Save"
  Then I should see "Category was successfully saved."