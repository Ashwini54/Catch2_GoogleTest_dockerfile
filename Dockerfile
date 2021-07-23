FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install -y tzdata 

# Time-zone settings 
RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime 

#INSTALLING CATCH & GOOGLETEST
RUN apt-get -y update && \
    apt-get install -y build-essential && \
    apt-get install -y cmake protobuf-compiler &&  \
    apt-get install -y git && \ 
    apt-get install -y make

RUN apt-get install -y libgtest-dev && \
    apt-get install -y cmake

#Testing_Googletest
RUN cd /usr/src/gtest \
    cmake CMakeLists.txt \
    make 
    
RUN git clone https://github.com/Ashwini54/googleTest_framework.git 
RUN cd googleTest_framework \
    cd googleTest_framework-main \
    cmake CMakeLists.txt \
    make \
    ./executeTests\
    cd /

#Testing_Catch2
RUN git clone --single-branch --branch v2.x https://github.com/catchorg/Catch2.git
RUN cd Catch2 \
    cmake -Bbuild -H. -DBUILD_TESTING=OFF \
    cmake --build build/ --target install \
    cd examples \
    g++ 020-TestCase-1.cpp \
    ./a.out 



