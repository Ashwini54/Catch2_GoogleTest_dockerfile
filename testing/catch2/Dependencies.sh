echo "## UPDATING & INSTALLING PACKAGE ##"
apt-get -y update 
apt-get install -y tzdata 

echo "##INSTALLING CATCH2  ##"
apt-get -y update && \
    apt-get install -y build-essential && \
    apt-get install -y cmake protobuf-compiler &&  \
    apt-get install --assume-yes git && \ 
    apt-get install -y make && \
    apt-get install -y cmake
	
echo "## DONE ##" 
