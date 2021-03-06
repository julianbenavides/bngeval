# This script automatically pulls the latest files from the github repo, pushes the latest main block version to the server through secure ftp
# updates the version file (patch) and test the http headers to ensure that the greetings microservice page is running.
#1. git pull
git pull
#2. call setversion script
sh setversion.sh $1
#3. push to the server environment instance selected by the user
sh ftpsec.sh $1
#4. Test http headers and curl response to an automatic POST
sh checkstatus.sh $1 BoeingCandidate
#5. Provide feedback to the user and finish

echo The auto-deployment of the microservice on $1 was completed
