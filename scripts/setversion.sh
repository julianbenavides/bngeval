#script to set the new version of the main block after deployment in any environment
echo Checking current version...
echo Reading from file: "../environment/currentversion.log"
#VAR_1="$(head -n 1 ../environment/currentversion.log)"
echo Current version: $(head -n 1 ../environment/currentversion.log)
#version nomenclature RELEASE.UPDATE.PATCH starting with 0-0-1
#Then I will explode the string to change the version depending if the deployment is in production -> release, test -> update, or development -> patch
IFS=- read -a verArray <<< "$(head -n 1 ../environment/currentversion.log)"

#Here I will add a numeral to the current version depending on where was the code deployed; if it was in production
# the release numeral will increase by one, if it was on test the update numeral will, if in development the patch numeral will.
# the script will receive the parameter environment in variable 1
if [ $1 = "Production" ]; then 
    echo I am here prod
    ((${verArray[0]}++))
elif [ $1 = "Test" ]; then
    echo I am here test
    ((${verArray[1]}++))
    elif [ $1 = "Development" ]; then
      echo I am here dev
      ((${verArray[2]}++))
fi;

echo DEBUG
echo
echo The deployment was performed on $1
echo
echo Release: ${verArray[0]} 
echo Update: ${verArray[1]} 
echo Patch: ${verArray[2]} 
