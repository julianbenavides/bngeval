# This script automatically pulls the latest files from the github repo, pushes the latest main block version to the server through secure ftp
# updates the version file (patch) and test the http headers to ensure that the greetings microservice page is running.
#1. git pull
git pull
#2. call setversion script
sh setversion.sh development
#3. push to the server development environment instance
sh ftpsec.sh development
#4. Test http headers
sh checkstatus.sh development BoeingCandidate
#5. Provide feedback to the user and finish
