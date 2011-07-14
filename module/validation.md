---
title: Seam Validation
layout: module
module_name: validation
github_project: validation
jira_project_key: SEAMVALIDATE
jira_project_id: 12311172
tagline: Provides enhanced validation features based on Hibernate Validator.
maven_artifact_id: 
  - seam-validate
  - seam-validate-api
  - seam-validate-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Validation/ 
---
## Description
The Seam Validation module aims at integrating Hibernate Validator, the reference implementation for the Bean Validation 
API (JSR 303), with CDI (JSR 299).

This integration falls into two main areas:

- Enhanced dependency injection services for validators, validator factories and constraint validators
- Automatic validation of method parameters and return values based on Hibernate Validator's method validation feature
