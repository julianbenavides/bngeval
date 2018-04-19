# This script verifies the headers of a recently deployed environment; the header should be 200 or OK, if it shows something different it
# Will notify the user
echo $(curl --write-out %{http_code} --silent --output /dev/null https://jbits.ca/work/boeing/$1/)
