---
title: Seam Security
layout: module
module_name: security
github_project: security
jira_project_key: SEAMSECURITY
jira_project_id: 12310971
tagline: Offers simpler, yet more powerful authentication and authorization for Java EE applications.
maven_artifact_id: 
  - seam-security
  - seam-security-api
  - seam-security-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Security/ 
---
## Description
Seam Security provides a powerful set of authentication and authorization services for CDI applications. Authentication 
is based on the JAAS standard and allows for total control over the user authentication process. Authorization is based 
on a pluggable, extendable API and offers a number of features for locking down the sensitive parts of your application 
- ranging from simple role-based security checks all the way through to advanced rule-based and ACL permissions.

To make life even easier, Seam Security provides an Identity Management API for managing the users and roles within your 
application, and a Permission Management API for managing the permissions for individual domain objects and other 
user-defined permissions.

For more advanced security requirements, seamless integration with [PicketLink](http://www.jboss.org/picketlink) allows 
you to take advantage of an even greater range of security backends, such as SSO, Kerberos and SAML.
