# Base Ubuntu image
FROM ubuntu:20.04

# Setting Time-zone 
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Specifying WORK DIRECTORY, copying and running Dependencies 
WORKDIR /
COPY Dependencies.sh .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh 

#Testing_Googletest
    cd /usr/src/gtest \
    cmake CMakeLists.txt \
    make 

# Cloning GoolgeTest sample from github
RUN git clone https://github.com/Ashwini54/googleTest_framework.git 
RUN cd googleTest_framework \
    cd googleTest_framework-main \
    cmake CMakeLists.txt \
    make \
    ./executeTests\
    cd /

#Testing_Catch2
#Cloning Catch2 sample from github
RUN git clone --single-branch --branch v2.x https://github.com/catchorg/Catch2.git
RUN cd Catch2 \
    cmake -Bbuild -H. -DBUILD_TESTING=OFF \
    cmake --build build/ --target install \
    cd examples \
    g++ 020-TestCase-1.cpp \
    ./a.out 
    
#     /Catch2/examples/a.out 
# EXPOSE 9000


