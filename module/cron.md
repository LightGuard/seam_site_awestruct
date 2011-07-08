---
title: Seam Cron
layout: module
module_name: cron
github_project: cron
jira_project_key: SEAMCRON
jira_project_id: 12311160
tagline: Scheduling and asynchronous invocation support for managed beans. 
maven_artifact_id: 
  - seam-cron-asynchronous-quartz
  - seam-cron-scheduling
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Config/3.0.0.Final/seam-config-3.0.0.Final.zip/download
---
## Description
The best way to run scheduled events in a JSR-299 environment. It makes use of CDI's typesafe event model for tying 
business logic to schedules. That is, you define your schedules using the provided qualifiers, which you apply to 
observer methods containing the business logic that you wish to be run at those times.
