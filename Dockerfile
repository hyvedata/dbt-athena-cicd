FROM registry.gitlab.com/gitlab-org/cloud-deploy/aws-base:latest
LABEL org.opencontainers.image.source="https://github.com/hyvedata/dbt-athena-cicd"
RUN apt update && apt upgrade -y 
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.10 python3-pip -y 
RUN pip install dbt-athena-community==1.7.2
