Feature: Display Correct Information
     In order to create a personal site
     As the creator
     I want to display links to my social sites

Scenario: Link to Github
     Given I am on the home page
     When I click on the "a" tag with url "#current_projects"
     Then I should be taken to the url "#current_projects" 