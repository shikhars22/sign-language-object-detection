# End-to-end-Object-Detection-Project


## Workflows

- constants
- config_entity
- artifact_entity
- components
- pipeline
- app.py




## Project Configuration

```bash
#install aws cli from the following link

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```

```bash
#Configure aws crediential (secret key & access key)

aws configure
```


```bash
#Create a s3 bucket for model pusher. name is mentioned in the consrtant

```



## How to run:

```bash
conda create -n signlang python=3.7 -y
```

```bash
conda activate signlang
```

```bash
pip install -r requirements.txt
```

```bash
python app.py
```





## Deployment & Jenkins Setup

Follow these steps to deploy this project on an AWS EC2 instance using Jenkins and AWS services:

### Step 1: Provision EC2 Instance
* **Operating System:** Ubuntu LTS (e.g., 22.04 LTS or 24.04 LTS)
* **Instance Type:** `t2.medium` (4 GB RAM, 2 vCPUs minimum recommended)
* **Storage:** 30 GB (General Purpose SSD - gp3)
* **Security Group Inbound Rules:**
  * Allow SSH (Port 22) from your IP.
  * Allow HTTP (Port 80) and custom TCP (Port 8080) for Jenkins.

### Step 2: Set up AWS IAM Role for EC2
Instead of configuring raw AWS Access Keys on the server, configure an IAM Role to allow the EC2 instance to interact with S3 and ECR securely:
1. Open the **AWS Console** and navigate to **IAM -> Roles -> Create role**.
2. Select **AWS service** as the Trusted entity type and choose **EC2** as the service/use case.
3. Attach the following policies:
   * **`AmazonS3FullAccess`**
   * **`AmazonEC2ContainerRegistryFullAccess`**
4. Name the role `EC2-Jenkins-MLOps-Role` and click **Create role**.
5. Go to the **EC2 Console**, select your Jenkins instance, and click **Actions -> Security -> Modify IAM role**.
6. Select `EC2-Jenkins-MLOps-Role` and click **Update IAM role**.

### Step 3: Transfer and Run Setup Script
1. Transfer the setup script from your local machine to the EC2 server:
   ```bash
   scp -i awsSupportDocs/rsa-key-skg-mlFlow.pem scripts/jenkins.sh ubuntu@13.207.234.221:~/
   ```
2. SSH into your EC2 instance:
   ```bash
   ssh -i awsSupportDocs/rsa-key-skg-mlFlow.pem ubuntu@13.207.234.221
   ```
3. Convert Windows line endings (`CRLF`) to Unix format (`LF`) to prevent interpreter errors:
   ```bash
   sed -i 's/\r$//' jenkins.sh
   ```
4. Run the script:
   ```bash
   chmod +x jenkins.sh
   ./jenkins.sh
   ```
5. When prompted for **AWS Configuration** details, since you have attached the IAM Role, you can safely skip entering access keys:
   * **AWS Access Key ID [None]:** Press `Enter` (leave blank)
   * **AWS Secret Access Key [None]:** Press `Enter` (leave blank)
   * **Default region name [None]:** `us-east-1` (or your ECR repository region)
   * **Default output format [None]:** `json`

### Step 4: Unlock and Initial Setup of Jenkins
1. Open your browser and navigate to: `http://<YOUR_EC2_PUBLIC_IP>:8080`
2. Unlock Jenkins using the password printed at the end of the script or by running:
   ```bash
   sudo cat /var/lib/jenkins/secrets/initialAdminPassword
   ```
3. Click **Install suggested plugins**, then create your admin user.

### Step 5: Install Jenkins Plugins
Your pipeline requires the **SSH Agent** plugin to deploy to production:
1. Go to **Manage Jenkins -> Plugins -> Available plugins**.
2. Search for `SSH Agent`, check the box, and click **Install**.

### Step 6: Create Amazon ECR Repository
Create a private container registry to store your Docker images:
1. Navigate to the **Amazon ECR** console.
2. Click **Create repository** and select **Private**.
3. Name it (e.g., `sign-language-detection`) and click **Create repository**.
4. Copy the repository **URI** (e.g., `123456789012.dkr.ecr.us-east-1.amazonaws.com/sign-language-detection`).

### Step 7: Configure Jenkins Credentials
Navigate to **Manage Jenkins -> Credentials -> System -> Global credentials (unrestricted) -> Add Credentials**:

1. **AWS Account ID:**
   * **Kind:** `Secret text`
   * **Secret:** Your 12-digit AWS Account ID
   * **ID:** `AWS_ACCOUNT_ID`
2. **ECR Repository URI:**
   * **Kind:** `Secret text`
   * **Secret:** Your full ECR Repository URI (copied in Step 6)
   * **ID:** `ECR_REPOSITORY`
3. **SSH Private Key:**
   * **Kind:** `SSH Username with private key`
   * **ID:** `ssh_key`
   * **Username:** `ubuntu`
   * **Private Key:** Select **Enter directly**, click **Add**, and paste the contents of your `.pem` SSH private key file.

### Step 8: Create the Jenkins Pipeline Job
1. On the Jenkins home page, click **New Item**.
2. Enter a name (e.g., `sign-language-detection`), select **Pipeline**, and click **OK**.
3. Under the **Pipeline** section:
   * **Definition:** Select **Pipeline script from SCM**
   * **SCM:** Select **Git**
   * **Repository URL:** Your GitHub repository URL
   * **Branch Specifier:** `*/main` (or the branch you push to)
   * **Script Path:** `.jenkins/Jenkinsfile`
4. Click **Save**.




