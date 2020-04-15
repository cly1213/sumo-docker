FROM ubuntu:18.04

MAINTAINER leo
LABEL Description="Dockerised Simulation of Urban MObility(SUMO)"

ENV SUMO_VERSION 1.5.0
ENV SUMO_HOME /opt/sumo
ENV SUMO_USER leo

# Install system dependencies.
RUN apt-get update && apt-get -qq install \
    sudo \
    vim \
    git \ 
    wget \
    g++ \
    make

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:sumo/stable -y
RUN apt-get update -y
RUN apt-get install sumo sumo-tools sumo-doc -y

RUN adduser $SUMO_USER --disabled-password
# CMD sumo-gui
