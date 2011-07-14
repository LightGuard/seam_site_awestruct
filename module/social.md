---
title: Seam Social
layout: module
module_name: social
github_project: social
jira_project_key: SEAMSOCIAL
jira_project_id: 12311180
tagline: Provides CDI Beans and extensions to interact with major social network.
maven_artifact_id: 
  - seam-social
  - seam-social-api
  - seam-social-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Social/ 
---
## Description
Provides:

- OAuth cconnectors to authentify to an OAuth provider
- Support for Twitter only right now
- Status update
- and more to come...

Seam Social is independent of CDI implementation and fully portable between Java EE 6 and Servlet environments enhanced 
with CDI. It can be also used with CDI in JSE (desktop application). It make an intensive use of 
[scribe-java from fernandezpablo85](https://github.com/fernandezpablo85/scribe-java).
