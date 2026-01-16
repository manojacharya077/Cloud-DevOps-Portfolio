# Cloud-Hosted Minecraft Infrastructure
## AWS | Docker | Linux

An automated deployment pipeline for high-performance Minecraft servers using Amazon ECS (Fargate).

### Key Features
* **Infrastructure as Code:** Bash scripts (`launch.sh`) to abstract AWS CLI complexity.
* **Security:** Configured granular Security Groups with specific ingress rules for Port 25565.
* **Containerization:** Custom Docker images optimized for production Linux environments.
* **AWS Integration:** Integrated with Amazon ECR for version-controlled image management.

### Tech Stack
* **Cloud:** AWS (ECS, ECR, Fargate)
* **DevOps:** Docker, Bash Scripting
* **System:** Linux
