# This script will automatically create a new node for the boeing micro-service with all the enviroments required
echo CREATING NEW BOEING NODE
echo Connecting through encrypted channel using ftps and tls 1.2.
echo
echo Creating new root folder boeing$1...
echo ...
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/  -u boeingnewnode@jbits.ca:boeing
echo [done]
echo Creating folder structure inside boeing$1
echo ...
echo Creating demo environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/  -u boeingnewnode@jbits.ca:boeing
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/ver/  -u boeingnewnode@jbits.ca:boeing
echo [done]
echo Creating development environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/developer/  -u boeingnewnode@jbits.ca:boeing
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/developer/  -u boeingnewnode@jbits.ca:boeing
echo [done]
echo Creating production environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/production/  -u boeingnewnode@jbits.ca:boeing
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/demo/production/  -u boeingnewnode@jbits.ca:boeing
echo [done]
echo Creating test environment folders
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/test/  -u boeingnewnode@jbits.ca:boeing
curl --ftp-ssl-reqd -k  --ftp-create-dirs  ftp.jbits.ca/boeing$1/test/ver/  -u boeingnewnode@jbits.ca:boeing
echo [done]
echo ...
echo Creating Files list on boeing$1
echo ...

#echo File main-$(head -n 1 ../environment/currentversion.log).php has been uploaded to the $1 environment
#echo
#echo End of transaction. Closing connection
