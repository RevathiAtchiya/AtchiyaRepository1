@UAAS
Feature: Delete User under an Group via API for Banking System
  I want to use this template for my feature file

  Background: 
    Given UAAS environment as EnvVariable and load adminServices path

  @CreateUser
  Scenario Outline: Delete User Module
    # you can read parameters from Excel Sheet also instead of using feature file for test data
    Given Read DeleteUser parameters "<Admin_AppId>" "<Admin_GroupId>" "<Admin_UserId>" "<password>" "<type>" "<User_AppId>" "<User_GroupId>" "<User_UserId>" "<StatusCode>"
    And JSON posted for CreateUser_API
    And DeleteUser request status must be 200
    Then First Validate CreateUserAPI Response code
    And validate CreateUser availablity in DB

    Examples: 
      | Admin_AppId | Admin_GroupId | Admin_UserId | password | type | User_AppId | User_GroupId | User_UserId | StatusCode |
      |             |               |              |          |      |            |              |             |            |
