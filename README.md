

General Information:
The solution provided for this assignment comprises a series of technologies and protocols to facilitate the automation of certain tasks. Each part of the solution to this assignment was designed thinking about making this as fast and efficient as possible.

Technology Stack:
* Version Control: Git/Github was used to manage all the code produced for this assignment
* Automation: The automation portion of this assignment was developed solely using shell scripts, and will require a machine that can run .sh files
* Deployment: All the code was pushed to my personal server that has a LAMP configuration although only LAP was used for this exercise (no database component was involved)
* Development Language: Shell scripts (bash), and PHP
* Protocols: Curl and FTPS over TLS1.2 was used for this exercises to keep all the data encrypted end-to-end.



Instructions:
In order to run the solution I developed, please clone or fork this repository by using:
> git clone https://github.com/julianbenavides/bngeval.git

In the folder /scripts you will find all the scripts required to trigger the automated processess.

1. The following list contains all the scripts created, with a brief description, and the parameters of use:

autodeploydev.sh
* This script automatically pulls the latest files from the github repo, pushes the latest main block version to the server through secure ftp, updates the version file (patch) and test the http headers and POST response to ensure that the greetings microservice page is running.
* It receives one parameter which is the environment to autodeploy (development, test, demo, production)

checkstatus.sh
> sh checkstatus.sh development BoeingCandidate
* This script verifies the headers of a recently deployed environment; the header should be 200 or OK
* The script also verifies if the POST microservice is working by POSTING a name using curl. It will verify if the server receives the POST and if the response included the name provided.
* It receives 2 parameters, the first is the environment to check (development, test, demo, production) and the second is the name to be used for the POST test.

createnewnode.sh
> sh createnewnode.sh node2
* This script will automatically create a new node for the boeing micro-service with all the enviroments required
* It receives a parameter that represents the name of the new node

ftpsec.sh
> sh ftpsec.sh test
* this script will upload the main block to any environment passed as the first parameter
* accepted parameters: development, demo, test, production

setversion.sh
> sh setversion.sh //no parameters
* script to set the new version of the main block after deployment in any environment.
* version nomenclature RELEASE.UPDATE.PATCH starting with 0-0-1
* It then exploeds the string to change the version depending if the deployment is in production -> release, test -> update, or development -> patch

2. Other Files:
* Each environment has 2 main components: a container (index.php) and the microservice (main-x-x-x.php) which is the block of code that is modified and deployed by the user. The container can be deployed while building a new node and embeds the main block by calling the include function. The versioning of the main block is managed by the setversion script and the version record is kept in the "currentversion.log" file located in the environment folder of the repository.
* The adminversions.php file located in the /environment/env/ path is used to display all the versions deployed in each environment for the user to select deploying a certain version at a certain environment. That file is renamed to "index.php" when deployed and can be accessed at the root folder of each node.
* To access that page go to: https://jbits.ca/work/boeing/
* To visit any environment running the latest microservice version go to: https://jbits.ca/work/boeing/{environment}/, where {environment} can be (development, demo, test, or production)
- [x]  https://jbits.ca/work/boeing/development
- [x]  https://jbits.ca/work/boeing/demo
- [x]  https://jbits.ca/work/boeing/test
- [x]  https://jbits.ca/work/boeing/production

Now, based on the requirements of the assignment, I will go one by one defining how to fulfill each requirement:

[As per the assignment]

Your responsibility on the team is to:
* Ensure that changes to the source code can be automatically tested before they are deployed
> This can be done using the checkstatus script pointing to demo as it wont affect the versinioning and will verify that the code is functional before deploying to development, test, or production.
* Specific version of the service can be launched for testing, debugging and demos
> This can be done by going to the admin console (e.g. https://jbits.ca/work/boeing/) and selecting the desired environment and version of the micro-service. The list of availables versions will automatically change if new deployments are made.
* Infrastructure and required services provisioning as well as deployment is automated and can be triggered with a click of a button or a command in a terminal
> This can be achieved with the autodeploydev script providing the paramenter with the name of the environment you want to deploy to (e.g. development)
* Service is reasonably resilient and a single node failure does not affect end users
> The solution was designed for each environment to be independent and node failures wont affect other nodes.
* Service can be scaled, preferably automatically, to handle increased loads
> This can be achieved with the createnewnode script


Limitations:
* Unfortunately I ran out of time to encrypt the user/password data used for the FTPs connection, but I'll look into it.
* I truly wanted to use dockers for this assignment but I was afraid I would not be able to fulfill the assignment in a fashionable time, so I went with a tech stack I was more familiar with. I would love to work on a containerized environment for sure.
----


