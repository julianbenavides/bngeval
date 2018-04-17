# bngeval
Assignment evaluation repository

This file contains all the information to build and run the code, scripts, and procedures for the _company_ hiring evaluation assignment.

# Assignment

You are a member of a cross-functional development team that owns the Greetings microservice. Greetings microservice has the following functionality at the moment: any GET request returns "Hello World!" The team hasn't implemented any automated tests or created a mechanism for automated deployments of this service to any of the existing environments (dev, test, demo, production) yet.

Next feature that the team will have to implement, test, demo and deploy into production is:
* POST request with a name of a person in the body returns "Hello {name} World!"

Your responsibility on the team is to:
* Ensure that changes to the source code can be automatically tested before they are deployed
* Specific version of the service can be launched for testing, debugging and demos
* Infrastructure and required services provisioning as well as deployment is automated and can be triggered with a click of a button or a command in a terminal
* Service is reasonably resilient and a single node failure does not affect end users
* Service can be scaled, preferably automatically, to handle increased loads

Rules
* Timebox this assignment to 4 hours. Focus on the most important aspects based on the current state of the microservice and upcoming team priorities.
* You can implement a simple Greetings microservice using technology stack of your choice
* You are free to use the programming language and tools of your choice
* The following virtualization options are acceptable (in case you choose to focus on this aspect of the assignment): AWS, Azure, VirtualBox, Docker.
