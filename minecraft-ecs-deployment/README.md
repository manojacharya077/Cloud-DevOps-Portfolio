# Cloud-Hosted Minecraft Infrastructure
## AWS EC2 | Docker | Linux

An automated deployment pipeline for high-performance Minecraft servers using Amazon ECS on **EC2 instances**.

### Key Features
* **Infrastructure Management:** Provisioned and managed **EC2 instances** as part of an ECS cluster.
* **Custom Networking:** Utilized Docker bridge networking to map containerized services to host ports.
* **Security:** Configured granular Security Groups with specific ingress rules (Port 25565).
* **Containerization:** Custom Docker images optimized for production Linux environments.
* **Automation:** Developed Bash scripts (`launch.sh`) to streamline image versioning and task registration.

### Tech Stack
* **Cloud:** AWS (ECS, ECR, EC2)
* **DevOps:** Docker, Bash Scripting
* **System:** Linux (Ubuntu/Amazon Linux)