echo "## UPDATING & INSTALLING PACKAGE ##"
apt-get -y update 
apt-get install -y tzdata 

echo "##INSTALLING GTEST  ##"
apt-get -y update && \
    apt-get install -y build-essential && \
    apt-get install -y git && \
    apt-get install -y libgtest-dev &&  \
    apt-get install --assume-yes git 
    apt-get install -y cmake && \
    apt-get install -y make 
    
    
#     cd /usr/src/gtest && \
#     cmake CMakeLists.txt && \
#     make && \
#     apt-get install cmake libgtest-dev && \
# copy or symlink libgtest.a and libgtest_main.a to your /usr/lib folder
#     cp *.a /usr/lib && \
    
#     apt-get install --assume-yes git && \ 
#     apt-get install -y make 
    
echo "## DONE ##" 
