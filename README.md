


# Cookiecuter
Cookiecutter is a templating library for creating boilerplate for projects in any programming language. More info at https://www.cookiecutter.io

This Docker image is designed to provide a convenient environment for generating various projects using Cookiecutter templates, including a Terraform configuration for deploying an EC2 instance on AWS,  and a basic Node.js website. 

The provided templates are very basic as a guide for testing, but with the goal to have your own templates

## Getting Started

This guide will walk you through building the Docker image, running the container, and using the provided Cookiecutter templates to generate your projects.

## Building the Docker Image

To build the Docker image:

1. Ensure Docker is installed on your system.
2. Clone this repository and navigate to the directory containing the Dockerfile.
3. Build the Docker image with the following command: `docker build -t my-cookiecutter-image`
4. This command builds the Docker image and tags it as `my-cookiecutter-image`.

## Running the Docker Container

To start a container from the built image:

1.  Run the Docker container with the following command:
    
    `docker run -it my-cookiecutter-image` 
    
2.  This command will start the container and open an interactive terminal session inside it, where you can use the included Cookiecutter templates.
    

## Using the Templates

Inside the Docker container, you can generate projects using the provided Cookiecutter templates. The following instructions guide you through generating each type of project.

### Basic Node.js Website

To generate a new Node.js website project:

1.  Run the following command inside the Docker container: `cookiecutter /usr/src/app/cookiecutter-node-website`
2. Enter the required details when prompted, such as the project name, author name, and description. The project will be generated in the current directory.
3. cd into the created folder and run `python3 create_node_website.py`
4. Once created, cd into the new folder and run` npm install && npm start`

### Terraform EC2 Instance
To generate a Terraform project for deploying an EC2 instance on AWS:

1.  Run the following command inside the Docker container: `cookiecutter /usr/src/app/cookiecutter-aws-ec2`
2. You will be asked to input details such as the AWS region, instance type, AMI ID, key name, and instance name. The generated Terraform configuration files will be created in a new directory based on your inputs.

## Official Templates

You can find all the official templates at the cookiecuter website: https://www.cookiecutter.io/templates

## Why use Cookiecuter?


### 1. **Standardization Across Projects**

-   **Consistent Project Structure**: Cookiecutter helps enforce a consistent structure across multiple projects, ensuring that all projects follow the same conventions, making them easier to maintain and scale.
-   **Best Practices**: By embedding best practices into templates, Cookiecutter ensures that every new project starts with a strong foundation, reducing the likelihood of mistakes and improving overall code quality.

### 2. **Efficiency and Productivity**

-   **Quick Setup**: Cookiecutter allows developers to quickly set up new projects with all the necessary boilerplate code, configurations, and folder structures. This saves time compared to manually creating files and setting up the environment.
-   **Automation**: It automates repetitive tasks, allowing developers to focus on writing code that adds value rather than setting up the project environment.

### 3. **Customization and Flexibility**

-   **Customizable Templates**: Developers can create highly customizable templates that can adapt to different project requirements by prompting users for specific inputs (e.g., project name, author, dependencies).
-   **Multi-Language Support**: Cookiecutter is language-agnostic, meaning it can be used to create templates for projects in any programming language, not just Python.

### 4. **Collaboration and Onboarding**

-   **Easier Onboarding**: New team members can quickly get up to speed by using standardized project templates, which reduces the learning curve and ensures they follow the same practices as the rest of the team.
-   **Shared Knowledge**: Teams can share and maintain Cookiecutter templates in a central repository, ensuring that everyone benefits from improvements and updates to the templates.

### 5. **Consistency in Documentation**

-   **Automatic Documentation Setup**: Templates can include pre-configured documentation structures (e.g., README files, docstrings), ensuring that every project has a basic level of documentation from the start.
-   **Uniformity in Configurations**: Ensures that configurations for testing, CI/CD, deployment, and other environments are consistently set up across all projects.

### 6. **Error Reduction**

-   **Reduced Human Error**: By automating the project setup, Cookiecutter reduces the risk of manual errors that could occur when setting up a project from scratch.
-   **Tested and Proven Templates**: Using well-tested templates reduces the chance of configuration issues or missing dependencies.

### 7. **Open Source and Community Support**

-   **Extensive Community**: Cookiecutter has a large community with a wide range of pre-built templates available for different use cases, languages, and frameworks.
-   **Open Source**: It is open-source, which means it is free to use and you can contribute to its development or customize it to better fit your needs.

### 8. **Scalability**

-   **Scales with Teams**: As teams grow, the need for standardized and efficient project setup increases. Cookiecutter scales well with teams, ensuring that projects are consistently set up across the organization.
-   **Supports Complex Workflows**: It can be used to create templates for complex project setups, including microservices, infrastructure as code, and more.

### 9. **Reusable Across Different Use Cases**

-   **Versatile**: Whether you need to set up a new web application, a data science project, or infrastructure as code, Cookiecutter can generate templates for virtually any scenario.
-   **Reusable**: Once you create a template, it can be reused across multiple projects, making it easier to start new projects without reinventing the wheel each time.

### 10. **Integration with CI/CD and DevOps Practices**

-   **DevOps Friendly**: Cookiecutter can be integrated into CI/CD pipelines to automate the creation of project environments, ensuring that deployments are consistent and reliable.
-   **Supports Automation**: By generating templates with pre-configured scripts and configuration files, Cookiecutter supports automated testing, deployment, and other DevOps practices.
