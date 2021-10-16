      

**Typescript**

  

A Typed superset of Javascript

  

Three parts 

- Language

- Language service

- Compiler

  

  

Primitives types in Javascript

- are values that aren’t objects, and have no methods

  

There are 6 primitive types

  

1.  null
2.  undefined
3.  number
4.  boolean
5.  string
6.  Symbol in es2015 

  

Individual Preparedness 

  

Knowledge and Experience 

  

Getting started with Docker

Docker Deep Dive

Getting started with Kubernetes

  

  

[Play-with-docker.com](http://Play-with-docker.com)

[Play-with-k8s.com](http://Play-with-k8s.com)

  

  

Swarm mode theory

  

It’s all about true native clustering

  

A collection of docker engines joined into a cluster is called swarm.

  

Docker engine running on each node in swarm is said to be running on swarm mode.

  

Swarm contains one or more manager nodes.

  

Manager nodes maintain the swarm

  

Dispatch tasks to worker nodes 

  

Worker nodes execute tasks 

  

Services

Declarative way of running and scaling apps

  

  

Docker service create —name web-fe —replicas 

  

  

Tasks

Atomic unit of work assigned to worker node.

— container

  

Docker swarm init --advertise-addr ip:port —listen-addr 

  

  

CD using Docker and Ansible 

  

  

Constructor with Prototypes Pattern

Module Pattern

Factory Pattern

Singleton Pattern

  

  

Structural Design Patterns

  

Concerned with how objects are made up and simplify relationships between objects.

  

  

-   Deal with the relationship of objects
-   Extend functionality
-   Simplify functionality

  

  

Decorator Pattern

  

Used to add new functionality to an existing object without being obtrusive 

  

-   More complete inheritance
-   Wraps an object
-   Protects existing objects
-   Allows extended functionality 

  

  

Facade Pattern

  

Used to provide a simplified interface to a complicated system.

  

-   Think about the front of a building.
-   Facade hides the chaos from us
-   Simplifies the interface
-   Think JQuery, best example of Facade pattern

  

  

Flyweight pattern

  

Conserves memory by sharing portions of an object between objects.

  

-   Our tasks had lots of non unique data
-   Flyweight shares data across objects
-   Results in a smaller memory footprint
-   Like a boxer — a flyweight 
-   But only if you have large number os objects

  

  

Behavioral Design Patterns

  

Concerned with the assignment of responsibilities between objects and how they communicate.

  

-   Deals with the responsibilities of objects
-   Help objects cooperate
-   Assigns clear hierarchy
-   Can encapsulate requests

  

  

Observer pattern

  

Allows a collection of objects to watch an object and be notified of changes.

  

-   Allows for loosely coupled system
-   One object is the focal point
-   Group of objects watch for changes

  

Mediator Pattern

  

Controls communication between objects so neither object has to be coupled to the others.

  

-   Allows for loosely coupled system
-   One object manages all communication
-   Many to many relationship

  

Command Pattern

  

Encapsulates the calling of a method as an object

  

-   Fully decouples the execution from the implementation.
-   Allows for less fragile implementations
-   Support undo operations
-   Supports auditing and logging of operations

  

When you treat commands as a full blown object.