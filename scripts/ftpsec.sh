# this script will upload the main block to any environment passed as the first parameter e.g. ftpsec.sh test
echo Starting secure upload script
echo ... 
echo Passed parameter Environment --> $1
echo ...
echo Connecting through encrypted channel using ftps and tls 1.2.
echo
curl --ftp-ssl-reqd -k -T "../environment/env/main.php" ftp.jbits.ca/$1/ver/main-$(head -n 1 ../environment/currentversion.log).php -u boeing@jbits.ca:boeing
echo ...
echo File main-$(head -n 1 ../environment/currentversion.log).php has been uploaded to the $1 environment
echo
echo End of transaction. Closing connection
