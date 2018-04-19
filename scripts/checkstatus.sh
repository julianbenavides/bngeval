# This script verifies the headers of a recently deployed environment; the header should be 200 or OK, if it shows something different it
# Will notify the user
echo Establishing connection with the instance...
echo curl http parameter: https://jbits.ca/work/boeing/$1/
echo Requesting http headers...
echo Response: $(curl --write-out %{http_code} --silent --output /dev/null https://jbits.ca/work/boeing/$1/)
echo
echo Starting automatic POST test to ensure that the microservice is working... using POST name [BoeingCandidate]
#echo curl --data "name=BoeingCandidate" https://jbits.ca/work/boeing/$1/
curl -d "name=BoeingCandidate" -X POST https://jbits.ca/work/boeing/$1/
