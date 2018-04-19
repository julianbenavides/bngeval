#script to set the new version of the main block after deployment in any environment
echo Checking current version...
echo Reading from file: "../environment/currentversion.log"
#VAR_1="$(head -n 1 ../environment/currentversion.log)"
echo Current version: $(head -n 1 ../environment/currentversion.log)
#version nomenclature RELEASE.UPDATE.PATCH starting with 0-0-1
#Then I will explode the string to change the version depending if the deployment is in production -> release, test -> update, or development -> patch
IFS=- read -a verArray <<< "$(head -n 1 ../environment/currentversion.log)"
echo ${myarray[2]} 
