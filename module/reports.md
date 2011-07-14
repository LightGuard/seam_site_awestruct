---
title: Seam Reports
layout: module
module_name: reports
github_project: reports
jira_project_key: SEAMREPORTS
jira_project_id: 12311214
tagline: A portable extension for Java EE that provides APIs for compiling, populating and rendering reports (Excel, PDF, etc) from existing report frameworks (JasperReports, etc) 
maven_artifact_id: 
  - seam-reports-api
  - seam-reports-jasper
  - seam-reports-pentaho
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Reports/ 
---
## Description
Seam Reports abstracts the usage of commonly used reporting engine frameworks. It acts as a bridge between CDI and any 
supported engine framework.

The supported engines so far are:

- JasperReports
- Pentaho Reporting

Seam Reports is independent of CDI implementation and fully portable between Java EE 6 and Servlet environments enhanced 
with CDI. It can be also used with CDI in J2SE (desktop application).
