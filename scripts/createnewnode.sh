# This script will automatically create a new node for the boeing micro-service with all the enviroments required
echo CREATING NEW BOEING NODE
echo Connecting through encrypted channel using ftps and tls 1.2.
echo
echo Creating new root folder boeing$1...
echo ...
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/  -u user@domain:password
echo [done]
echo Creating folder structure inside boeing$1
echo ...
echo Creating demo environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/  -u user@domain:password
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/ver/  -u user@domain:password
echo [done]
echo Creating development environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/development/  -u user@domain:password
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/development/ver/  -u user@domain:password
echo [done]
echo Creating production environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/production/  -u user@domain:password
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/production/ver/  -u user@domain:password
echo [done]
echo Creating test environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/test/  -u user@domain:password
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/test/ver/  -u user@domain:password
echo [done]
echo ...
echo Creating Files list on boeing$1
echo ...
echo Creating File list demo environment
curl --ftp-ssl-reqd -k -T "../environment/index.php" ftp.jbits.ca/boeing$1/demo/index.php -u user@domain:password
curl --ftp-ssl-reqd -k -T "../environment/track.log" ftp.jbits.ca/boeing$1/demo/track.log -u user@domain:password
echo [done]
echo Creating File list development environment
curl --ftp-ssl-reqd -k -T "../environment/index.php" ftp.jbits.ca/boeing$1/development/index.php -u user@domain:password
curl --ftp-ssl-reqd -k -T "../environment/track.log" ftp.jbits.ca/boeing$1/development/track.log -u user@domain:password
echo [done]
echo Creating File list production environment
curl --ftp-ssl-reqd -k -T "../environment/index.php" ftp.jbits.ca/boeing$1/production/index.php -u user@domain:password
curl --ftp-ssl-reqd -k -T "../environment/track.log" ftp.jbits.ca/boeing$1/production/track.log -u user@domain:password
echo [done]
echo Creating File list test environment
curl --ftp-ssl-reqd -k -T "../environment/index.php" ftp.jbits.ca/boeing$1/test/index.php -u user@domain:password
curl --ftp-ssl-reqd -k -T "../environment/track.log" ftp.jbits.ca/boeing$1/test/track.log -u user@domain:password
echo [done]
echo Creating Version Admin Page
curl --ftp-ssl-reqd -k -T "../environment/env/adminversions.php" ftp.jbits.ca/boeing$1/index.php -u user@domain:password
echo Ommiting master block
echo ...
echo New Node: boeing$1 has been successfully created. Access it at http://jbits.ca/work/boeing$1
echo Exiting script
echo
#echo
#echo End of transaction. Closing connection
