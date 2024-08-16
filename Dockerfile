# Use the official Ubuntu LTS image as the base image
FROM ubuntu:20.04

# Set the non-interactive mode to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    curl \
    vim \
    nodejs \
    npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Cookiecutter using pip
RUN pip3 install cookiecutter

# Verify the installation
RUN cookiecutter --version

# Set up a working directory
WORKDIR /usr/src/app

# Add the Python script for creating a basic Node.js website template to the Docker image
RUN mkdir -p /usr/src/app/cookiecutter-node-website
COPY node_website_template/cookiecutter.json /usr/src/app/cookiecutter-node-website/cookiecutter.json
COPY node_website_template/template/ /usr/src/app/cookiecutter-node-website/{{cookiecutter.project_name}}/

# Add the Terraform EC2 instance template to the Docker image
RUN mkdir -p /usr/src/app/cookiecutter-aws-ec2
COPY ec2_template/cookiecutter.json /usr/src/app/cookiecutter-aws-ec2/cookiecutter.json
COPY ec2_template/{{cookiecutter.project_name}}/ /usr/src/app/cookiecutter-aws-ec2/{{cookiecutter.project_name}}/


# Command to keep the container running, replace this with your custom commands or entrypoint
CMD ["bash"]
