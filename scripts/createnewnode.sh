# This script will automatically create a new node for the boeing micro-service with all the enviroments required
echo CREATING NEW BOEING NODE
echo Connecting through encrypted channel using ftps and tls 1.2.
echo
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/www/work/boeing$1/  -u boeingnewnode@jbits.ca:boeing
#curl --ftp-ssl-reqd -k ftp://boeingnewnode@jbits.ca:boeing@ftp.jbits.ca/boeing$1/  --ftp-create-dirs
#curl --ftp-ssl-reqd -k -T "../environment/env/main.php" ftp.jbits.ca/$1/ver/main-$(head -n 1 ../environment/currentversion.log).php -u boeing@jbits.ca:boeing
#echo ...
#echo File main-$(head -n 1 ../environment/currentversion.log).php has been uploaded to the $1 environment
#echo
#echo End of transaction. Closing connection
