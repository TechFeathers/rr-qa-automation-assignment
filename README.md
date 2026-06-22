# TMDB Discover - QA Automation Framework

## Overview

This project contains autmated test coverage for the TMDB Discover application using Robot Framework.

The framework covers:

* UI Automation using SeleniumLibrary
* API Automation using RequestsLibrary
* UI + API Integration Validation
* Scalable folder structure for future enhancements

---

## Technology Stack

### Framework

* Robot Framework

### Libraries

* SeleniumLibrary
* RequestsLibrary
* JSONLibrary
* Collections
* OperatingSystem

### Browser

* Google Chrome

---

## Project Structure

```text
main
│
├── tests
│   ├── ui
│   ├── api
│   └── integration
│
├── resources
│   ├── keywords
│   ├── variables
│   └── testdata
│
├── reports
│
├── requirements.txt
│
└── README.md
```

---

## Test Coverage
Total Test Cases Identified: 63

- UI Test Cases(Positive TCs 15 + Negative TCs 6): 21
- API Test Cases(Positive TCs 3 + Negative TCs 2): 05
- Integration Test Cases (Positive TCs 5 + Negative TCs 5): 10

Positive and Negative scenarios were considered while designing the test suite.

### UI Automation

* Application Launch
* Search Functionality
* Genre Filters
* Pagination / Infinite Scroll
* Error Handling

### API Automation

* Discover Movies API
* Search Movies API
* Response Schema Validation
* Invalid API Key Validation
* Response Time Validation

### Integration Tests

* Search Result UI vs API Validation
* Movie Details UI vs API Validation
* Genre Filter UI vs API Validation

---

## Installation

### Clone Repository

```bash
git clone https://github.com/TechFeathers/rr-qa-automation-assignment.git
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

---

## Execution

### Execute UI Suite

```bash
cd main;
robot tests/ui
```

### Execute API Suite

```bash
robot tests/api
```

### Execute Integration Suite

```bash
cd main;
robot tests/integration
```

### Execute Entire Suite

```bash
cd main;
robot tests
```

---

## Test Strategy

The application is primarily UI driven and intended for end users.

Automation focus:

* UI Tests: High Priority
* API Tests: Backend  Validation
* Integration Tests: Critical UI/API Data Validation


---

# Testing Strategy

The TMDB Discover application is primarily a UI driven application consumed by end users. Therefore, the automation strategy focuses mainly on validating critical user journeys through the UI while supplementing them with API and Integration validations.

The test coverage is distributed as follows:

| Test Type         | Purpose                                                  |
| ----------------- | -------------------------------------------------------- |
| UI Tests          | Validate user-facing functionality and workflows         |
| API Tests         | Validate backend responses, contracts and error handling |
| Integration Tests | Validate consistency between UI and API layers           |

The overall automation strategy follows the Test Automation Pyramid where UI tests are focused on critical business flows and API tests are used to validate backend behavior.

---

# Test Case Design and Coverage

A total of 63 test scenarios were identified and documented.

The test scenarios were categorized into:

### Positive Scenarios

Examples:

* Search for a valid movie
* Apply genre filter
* View movie details
* Infinite scrolling

### Negative Scenarios

Examples:

* Search for non-existing movie
* Search with special characters
* Invalid API key
* Invalid page number
* Empty search result handling

### Priority Classification

| Priority | Description                       |
| -------- | --------------------------------- |
| P0       | Critical business functionality   |
| P1       | Important functionality           |
| P2       | Nice-to-have / low risk scenarios |

Automation implementation focuses primarily on P0 and selected P1 scenarios.

---

# Test Design Techniques Used

The following test design techniques were used while creating test cases:

### Equivalence Partitioning

Example:

Search field input:

* Valid movie name
* Invalid movie name
* Special characters

### Boundary Value Analysis

Examples:

* Empty search string
* Very long search string
* Invalid page numbers

### Error Guessing

Examples:

* Invalid API Key
* Network interruption
* Slow response handling

### Risk Based Testing

Priority was assigned based on:

* Business impact
* User frequency
* Failure impact

Critical user workflows were prioritized for automation.

---

# Automation Framework Design Patterns

The following design principles and patterns were used:

### Keyword Driven Framework

Robot Framework keywords were created to promote reusability and readability.

Examples:

* Search Movie
* Select Genre
* Get Movie Details

### Modular Design

UI, API and Integration tests are separated into different suites.

Benefits:

* Easier maintenance
* Better scalability
* Improved readability

### Configuration Driven Approach

Application URLs, API endpoints and test data are externalized into resource files.

Benefits:

* Easy environment changes
* Reduced code duplication

### Reusable Utility Keywords

Common functionality is centralized and reused across test suites.

---

# Defects Found During Testing

The following observations were identified during exploratory testing of the application.

### Defect 1: Search Result Behavior

Observation:
Search results occasionally display inconsistent ordering when repeated searches are performed.

Impact: 
Medium

Recommendation:
Implement deterministic sorting for search results.

---

### Defect 2: Empty Search Handling

Observation:
Search behavior for empty or whitespace-only values could be improved with explicit validation.

Impact:
Low

Recommendation:
Provide user-friendly validation message or reset to default state.

---

### Defect 3: Search string is not retained after page refresh

Observation:
After inputting the search string and expected string should be retained after page refresh but it is cleared
Impact:
Low

Recommendation:
Provide user-friendly validation message or reset to default state.

---

### Defect 4: Error Handling

Observation:
When backend responses fail, user-facing error messages are limited.

Impact:
Medium

Recommendation:
Display meaningful error messages to improve user experience.

---

### Defect 5: Discover Panel End year should be Current year 2026

Observation:
The Discover Panel End year should be Current year 2026 but it is displaying 2025

Impact:
High

Recommendation:
Display 2026 as the end year in the Discover Panel to ensure accurate filtering.

---

### Defect 6: When page refreshing multiples times ends up with 404 page not found

Observation:
When the page is refreshing at some intervals it should display the actual content but instead it is throwing 404 page not found.
Impact:
High

Recommendation:
Implement proper error handling and ensure that the application gracefully handles page refreshes without resulting in a 404 error.
---

# Automation Scope

Automated Test Coverage:

* Critical UI workflows
* Core API validations
* UI/API integration validations

Out of the identified test scenarios, the automation implementation focuses on high-value and frequently executed scenarios to maximize coverage while minimizing maintenance effort.
---
# CI/CD Integration Approach

The following section shows how this automation suite would be integrated into a Continuous Integration pipeline.

## Objectives

* Execute automated tests on every code change
* Provide quick feedback to developers
* Prevent regressions
* Generate automated execution reports

---

## Proposed CI Workflow

### Trigger Conditions

Pipeline execution can be triggered on:

* Pull Request Creation
* Pull Request Updates
* Merge to Main Branch
* Nightly Scheduled Execution

---

## Pipeline Stages

### Stage 1: Source Checkout

* Pull latest code from repository

### Stage 2: Environment Setup
## This can be one time process as part of readiness
* Create clean execution workspace
* Install Python dependencies
* Install browser drivers

Example:

```bash
pip install -r requirements.txt
```

---

### Stage 3: Static Validation
## Let's execute Dry run
* Validate Robot Framework syntax
* Verify resource file references
* Validate configuration files

---

### Stage 4: API Test Execution

Execute API suite first.

Reason:

* Faster execution
* Early detection of backend issues

```bash
robot tests/api
```

---

### Stage 5: UI Test Execution

Execute critical UI regression suite.

```bash
robot tests/ui
```

---

### Stage 6: Integration Test Execution

Execute UI + API validation scenarios.

```bash
robot tests/integration
```

---

### Stage 7: Report Publishing

Publish:

* log.html
* report.html
* output.xml

as pipeline artifacts.

---
### Stage 8: Rerun the Failed Test suites

robot --rerun output.xml main/ui
robot --rerun output.xml main/api
robot --rerun output.xml main/integration

---
### Stage 9: Notification

Notify stakeholders through:

* Email
* Slack
* Microsoft Teams

including:

* Total Tests
* Passed Tests
* Failed Tests
* Report Links

---

## Recommended Execution Strategy

### Pull Request Validation

Execute:

* API Tests
* Critical UI Smoke Tests

Goal:

* Fast feedback within a few minutes

---

### Nightly Regression

Execute:

* Full UI Suite
* Full API Suite
* Full Integration Suite

Goal:

* Complete regression validation

---

## Future Enhancements

* Parallel Execution using Pabot
* Cross Browser Execution
* Jenkins Pipeline Integration
* GitHub Actions Integration
* Test Result Dashboard

---

## Assumptions

* Stable TMDB API availability
* Chrome browser available in execution environment
* Test environment accessible during execution
* Valid API key configured in framework variables

---

## Author

Abdulvakaf - 
Senior QA Automation Engineer
