# Terraform IAM User Management

This project demonstrates how to manage **AWS IAM users, groups, and policies** using Terraform.  
Instead of creating IAM resources manually in the AWS console, we define them as **Infrastructure as Code (IaC)** to ensure consistency, automation, and scalability.

---

## 📌 Features
- Create IAM users
- Create IAM groups
- Attach users to groups
- Attach AWS managed or custom policies
- Output IAM user details

---

## 🛠️ Tech Stack
- **Terraform** (Infrastructure as Code)
- **AWS** (Identity and Access Management)

---

## 🚀 Usage

### 1️⃣ Initialize Terraform
```bash
terraform init
````

### 2️⃣ Preview Resources

```bash
terraform plan
```

### 3️⃣ Apply Changes

```bash
terraform apply
```

### 4️⃣ Destroy Resources (optional)

```bash
terraform destroy
```

---

## 📂 Project Structure

```
.
├── main.tf        # IAM users, groups, and policies
├── variables.tf   # Input variables for customization
├── outputs.tf     # Outputs such as user ARNs
```

---

## 📸 Example IAM Setup

* Create a group: `devops-group`
* Create users: `user1`, `user2`
* Attach policy: `AmazonEC2FullAccess`

---

## 🔗 Follow My Journey

* 📖 [Hashnode Blogs](https://abdulraheem.hashnode.dev)
* 🐦 [X (Twitter)](https://x.com/yourprofile)
* 💻 [GitHub](https://github.com/yourprofile)

---

## 📜 License

This project is open-source and available under the **MIT License**.


