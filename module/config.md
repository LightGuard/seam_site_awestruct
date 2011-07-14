---
title: Seam Config
layout: module
module_name: config
github_project: config
jira_project_key: SEAMCONFIG
jira_project_id: 12311200
tagline: Provides alternate bean metadata sources. Implements the typesafe XML-based configuration format defined in earlier revisions of the JSR-299 specification.
maven_artifact_id: seam-config-xml
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Config/3.0.0.Final/seam-config-3.0.0.Final.zip/download
---
## Description
Seam Config provides a portable way of configuring CDI beans via XML (and other means planned). You can use it to:
  
* define additional beans
* augment beans defined via annotations
* wire beans together (by defining type-safe injection points)

The file format is typesafe and extensible:

- Multiple namespaces are accommodated, each representing a Java package.
- XML elements belonging to these namespaces represent Java types, fields and methods.
- Each namespace may declare an XML schema.

For more information on the syntax and how to configure your beans, check out the [reference guide](http://docs.jboss.org/seam/3/config/latest/reference/en-US/html_single/).
