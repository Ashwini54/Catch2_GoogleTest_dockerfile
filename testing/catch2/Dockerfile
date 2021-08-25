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
COPY Catch2_testing .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh 
RUN ls
RUN /bin/bash -c 'chmod +x /Dependencies.sh'
RUn ls
