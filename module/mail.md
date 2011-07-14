---
title: Seam Mail
layout: module
module_name: mail
github_project: mail
jira_project_key: SEAMMAIL
jira_project_id: 12311030
tagline: A fluent, CDI-based API that integrates with templating engines to allow developers to easily compose and send multi-part e-mail from a Java EE application.
maven_artifact_id: 
  - seam-mail
  - seam-mail-api
  - seam-mail-impl
downloads:
  Distribution: 
---
## Description
Let's face it, the Java Mail API needs a makeover. Thankfully, the CDI programming model offers the necessary hooks to 
create a modernized mail API capable of deep integration with the Java EE platform (specifically the Java Mail API and 
container-managed sessions).

Seam Mail offers a fluent API that makes sending e-mail in Java a painless experience. But an e-mail is nothing without
the content. That's why Seam Mail offers several templating options, such as FreeMarker and Velociy, as well as an 
extensible template SPI to allow you to select your templating solution of choice. With Seam Mail, you'll be sending 
e-mail in no time (just don't get carried away).
