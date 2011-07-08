---
title: Seam Faces
layout: module
module_name: faces
github_project: faces
jira_project: SEAMFACES
tagline: Further unifies JSF and CDI, brings enhancements to the JSF programming model left out of the specification and integrates JSF with other Seam modules
maven_artifact_id: 
  - seam-faces
  - seam-faces-api
  - seam-faces-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Config/3.0.0.Final/seam-config-3.0.0.Final.zip/download
---
## Description
In many cases, the functionality provided by this module are prototypes for future versions of the JSF or CDI specifications.

Included in this package is the ability to interoperate with Seam's i18n support, debugging output for JSF, context 
implementations for JSF's flash scope (`@FlashScoped`) and view scope (`@ViewScoped`) (and look into Window scope, 
see [ICEFaces Window Scope](http://wiki.icefaces.org/display/ICE/Using+Window+Scope) 
or [PortletFaces scopes](http://www.portletfaces.org/web/fw/scopes)), `@Inject` into JSF system event listeners, 
converters and validators, support for nested conversations, view metadata components such as viewAction and restrictView, etc.

Any rendering UIComponent should be introduced into RichFaces rather than Seam, a change in policy from Seam 2. The Seam 
project doesn't want to be in the business of maintaining a component library since we already have a whole team for that work.

Further, this module contains Seam Managed Transactions.
