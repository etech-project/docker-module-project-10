# Docker Project 10


### Part1:
  1. What is docker?
    - It is a Platform as a Service that uses OS-level virtualization to deliver software in packages called containers.
    - It helps application works seamlessly in an environment

  2. List 3 differences between a docker container and virtual machine

  - VM
      - Helps developers to run and host most OS on the hardware of a single physical server
      - It's an Hypervisor that provides overall VM to the guest OS
      - Hardware level isolation
      - More resource usage

  - Docker
      - OS level process isolation
      - It only has to boot one kernel as compared to the virtual machine (Boots in seconds)
      - The containers are lightweight
      - Less resource usage

  3. Why do companies prefer microservice over monolith applications?

  - This is because monolith is a chunk of code, while microservices are is a collection opf smaller dependently deployable services

  - Better scalability
  - Independent components

  4. What is a docker image?

  - It's a template that contains the application and all the dependencies required to tun that application on Docker


  5. What is a docker container?

   - It's the running instance of a docker image

  6. How do you troubleshoot miscommunications of docker containers?

  - Identify containers with issues
  - Run a docker inspect to find the issue with the container
  - Confirm the network conmfigution is correctly configured


  7. How are you using docker in your current role at Etech Consulting?

  - At Etech, we 

      - we use docker for simplifying our configuations
      - Code pipeline management
      - Multi-tenancy


  8. What implementation will you deploy to ensure data is persisted from a docker container application?

  - Volumes
  - Use bind mounts

  9. What plugin can you use to integrate Jenkins to docker APIs?

  -  docker integration plugins

  10. Write down the process to delete a docker image that is currently running an application

  - List running containers `docker ps`
  - Stop running container  `docker stop container_id/name`
  - rmove container `docker rmi conatiner_id`

  - to remove docker image, do:  `docker rmi im,age_id`

  11. What will you do if your docker image was wrongly created?

  - Remove the image

### Part2:
  Write down your CICD pipeline workflow from developer environment till creating your docker image and
  backing up the docker image to a container registry of your choice.

- See the Jenkinsfile...

- Create a Jenkins Pipeline
- Inside the Pipeline,
    Define the build tools, like maven
    Create a registry environment to point to the container repository
    - The structure of the pipeline consist of the following stages
        - Stage 1: to clone the repository. The repo should contain some pom.xml file to build and inject dependencies
        - Stage 2: to do a maven build
        - Stage 3:  to build docker images
        - Stage 4: to push to ECR (Elastic Container Registry)
          Note: Before pushing the image to ECR, auithenticate with AWS by create a IAM Role and attaching an AmazonEC2ContainerFullAccess policy. To grant Read and Write Permission to the Jenkins server.