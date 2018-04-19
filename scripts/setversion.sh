#script to set the new version of the main block after deployment in any environment
echo Checking current version...
echo Reading from file: ../environment/currentversion.log
VAR1="$(head -n 1 ../environment/currentversion.log)"
echo Current version: $(VAR1)
