---
title: Seam Persistence
layout: module
module_name: persistence
github_project: persistence
jira_project_key: SEAMPERSIST
jira_project_id: 12311060
tagline: Brings transactions and persistence to managed beans, provides a simplified transaction API and hooks transaction propagation events to the CDI event bus.
maven_artifact_id: 
  - seam-persistence
  - seam-persistence-api
  - seam-persistence-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/Persistence 
---
## Description
Brings transactions and persistence to non-EJB managed beans, provides a simplified transaction API and hooks transaction 
propagation events to the CDI event bus. It may also bring features handled by Java EE containers to your CDI application 
running on Java SE or servlet containers, like Tomcat or Jetty. This module also includes abstractions for Persistence as 
a general concept (JDBC, JPA, Hibernate, NoSQL, and JDO,) otherwise referred to as the Seam-persistence framework - making 
CRUD easy, and more.

The overall goal of EJB 3.1 was to simplify overall usability so that developers would choose either an EJB stateful or 
stateless session bean when needing declarative transaction or security capabilities. The difference between an EJB and 
managed bean has been reduced to a single annotation on the class:

managed bean:

    public class ManagedBean {}

stateful session bean:

    @Stateful public class ManagedBean {}

stateless session bean:

    @Stateless public class ManagedBean {}

An EJB no longer requires an interface and can be packaged in a war. What sets apart an EJB is that it has transactions 
enabled by default (type REQUIRED), whereas the managed bean has no out-of-the-box interceptors.

In Java EE 6, the only beans that support transactions out of the box are EJBs. You can, of course, apply your own 
interceptor to any bean, but there is no off the shelf transaction interceptor. Many people, including us, believe that 
non-EJB managed beans should enjoy declarative transaction capability as well. It didn't happen for Java EE 6. That is 
the need we seek to fill to some extent in Seam 3, and perhaps weave into the platform in the future.

The Seam Persistence module will provide the following:

- Declarative transaction support for managed beans
- A simplified transaction API
- A seam managed persistence context usable in both SE and EE environments
- Envars Integration
- Hibernate Search Integration
- Injection into entities
- A CDI Transaction Scope

It would also be nice to support REQUIRES_NEW for managed beans, although this will probably require configuring a 
transaction manager in xml as support for this varies between application servers.

