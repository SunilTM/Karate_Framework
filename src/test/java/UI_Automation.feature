
@debug
Feature: Karate UI Automation
 Scenario: Sample Ui Automation Test
   Given driver 'https://www.google.co.in/'
   And waitFor("input[title='Search']")
   And input("input[title='Search']",'Karate Automation Test')
   When click("input[title="Search"]")