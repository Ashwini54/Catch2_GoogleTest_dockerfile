# Dockerfile for building Catch2 and Googletest images based on ubuntu
# Base Ubuntu image
FROM ubuntu:20.04 AS builder

# RUN useradd -u 1234 user1
# USER user1

# Set the Environment variable for Time-zone 
FROM builder AS build1
ENV TZ=Asia/Kolkata 
FROM builder AS build2
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


#Specifying WORK DIRECTORY, copying and running Dependencies 
FROM builder AS build3
WORKDIR /
COPY Dependencies.sh .
# COPY googleTest_testing .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh 
# RUN /bin/bash -c 'chmod +x /Dependencies.sh'
RUN ls 
RUN git clone https://github.com/google/googletest.git
RUN ls
RUN cd googletest && ls && cd googletest && ls
# cmake CMakeLists.txt && make && ls 
#./executeTests


# RUN /bin/bash -c 'chmod +x /Dependencies.sh'



#Testing_Googletest
#     cd /usr/src/gtest \
#     cmake CMakeLists.txt \
#     make 

# # Cloning GoolgeTest sample from github
# FROM builder AS build4
# RUN git clone https://github.com/Ashwini54/googleTest_framework.git 
# RUN cd googleTest_framework \
#     cd googleTest_framework-main \
#     cmake CMakeLists.txt \
#     make \
#     ./executeTests\
#     cd /

# #Testing_Catch2
# #Cloning Catch2 sample from github and building the file
# FROM builder AS build5
# RUN git clone --single-branch --branch v2.x https://github.com/catchorg/Catch2.git
# RUN cd Catch2 \
#     cmake -Bbuild -H. -DBUILD_TESTING=OFF \
#     cmake --build build/ --target install \
#     cd examples \
#     g++ 020-TestCase-1.cpp \
#     ./a.out 
    
