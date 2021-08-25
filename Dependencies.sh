echo "## UPDATING & INSTALLING PACKAGE ##"
apt-get -y update 
apt-get install -y tzdata 

echo "##INSTALLING CATCH2  ##"
apt-get -y update && \
    apt-get install -y build-essential && \
    apt-get install -y libgtest-dev &&  \
    apt-get install cmake libgtest-dev
    apt-get install --assume-yes git && \ 
    apt-get install -y cmake && \
    apt-get install -y make 
    
	
echo "## DONE ##" 
