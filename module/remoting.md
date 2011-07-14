---
title: Seam Remoting
layout: module
module_name: remoting
github_project: remoting
jira_project_key: SEAMREMOTING
jira_project_id: 12310970
tagline: An Ajax-centric technology that allows the web page (via JavaScript) to interact directly with the beans in a CDI application.  
maven_artifact_id: 
  - seam-remoting
  - seam-remoting-api
  - seam-remoting-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Remoting 
---
## Description
Requiring just a minimal amount of JavaScript, Seam Remoting makes it trivial to invoke server-side bean methods with 
full support for CDI-specific features such as the conversation scope and bean qualifiers.

The powerful Model API lets you to work remotely with a server-side object graph of managed entities by allowing 
client-side changes to be incrementally applied to the managed server-side model, all within the scope of a managed 
persistence context.

Support for client-side bean validation (based on JSR-303) is also now supported.

Would it be reasonable to use JSF 2 client behaviors to add Seam Remoting interactions to a JSF page? Perhaps a 
seam-faces-remoting module?
