# This script verifies the headers of a recently deployed environment; the header should be 200 or OK, if it shows something different it
# Will notify the user
echo Establishing connection with the instance...
echo curl http parameter: https://jbits.ca/work/boeing/$1/
echo Requesting http headers...
echo Response: $(curl --write-out %{http_code} --silent --output /dev/null https://jbits.ca/work/boeing/$1/)
echo
echo Starting automatic POST test to ensure that the microservice is working... 
echo using POST name [$2]
#echo curl --data "name=BoeingCandidate" https://jbits.ca/work/boeing/$1/
RESULT=$(curl -d "name=$2" -X POST https://jbits.ca/work/boeing/$1/)
echo "$RESULT"
#Automatically find the POST name
flag=`echo $RESULT|awk '{print match($0,"$2")}'`;

if [ $flag -gt 0 ];then

    echo "Success";
else
    echo "fail";

fi
