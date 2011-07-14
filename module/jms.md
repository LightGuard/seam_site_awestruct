---
title: Seam JMS
layout: module
module_name: jms
github_project: jms
jira_project_key: SEAMJMS
jira_project_id: 12311010
tagline: Provides improved JMS APIs and bridges the CDI event bus over JMS.
maven_artifact_id: 
  - seam-jms
  - seam-jms-api
  - seam-jms-impl
downloads:
  Distribution: http://sourceforge.net/projects/jboss/files/Seam/JMS/ 
---
## Description
The general goals can be divided into two categories: injection of JMS resources and forwarding of events.

### Injection of JMS Resources

- Connection 
- Session 
- Destinations 
- Message Producer 
- Message Consumer 

### Event Bridge

- Egress: Routes CDI events to JMS destinations 
- Ingress: Fires CDI events based on the reception of JMS messages 

### Simplified APIs

- MessageManager: Creation of basic messaging objects (Session, Producer, Consumer, Message) 
- RouteBuilder: Startup call back on ingress routes. 
- DurableMessageManager: Support for Durable Subscriptions. 
- TopicBuilder and QueueBuilder: Builder pattern implementation for working with Queues/Topics 
