# Terraform IAM User Management

This project automates **AWS IAM user and role management** with Terraform.  
Users and their roles are defined in a simple **YAML file**, making it easy to scale and modify without touching Terraform code.

---

## 🚀 Features
- Create IAM **users** from YAML configuration
- Assign **multiple roles** per user
- Automatically attach **AWS-managed IAM policies** to roles
- Generate **login profiles** with initial passwords
- Store role-to-policy mapping in a centralized Terraform locals block

---

## 📂 File Structure
```

.
├── providers.tf         # AWS provider (v6.11.0)
├── roles.tf             # Role creation + policy attachment
├── users.tf             # User creation + login profiles
├── user-roles.yaml      # User-to-role mapping
└── outputs.tf           # Exposes generated passwords

````

---

## 🛠️ How It Works
1. Define users and roles in `user-roles.yaml`:
   ```yaml
   users:
     - username: john
       roles: [readonly, developer]
     - username: jane
       roles: [admin, auditor]
     - username: lauro
       roles: [readonly]


2. Terraform reads this YAML file with `yamldecode()` and maps users to their roles.

3. `roles.tf` creates IAM roles for each role type and attaches AWS-managed policies.

4. `users.tf` provisions IAM users and login profiles.

---

## 📦 Example: Generated Resources

* Users: `john`, `jane`, `lauro`
* Roles: `readonly`, `developer`, `admin`, `auditor`
* Policies attached automatically:

  * `readonly` → `ReadOnlyAccess`
  * `developer` → `AmazonVPCFullAccess`, `AmazonEC2FullAccess`, `AmazonRDSFullAccess`
  * `admin` → `AdministratorAccess`
  * `auditor` → `SecurityAudit`

---

## 🔑 Outputs

Terraform will output randomly generated passwords for each user:

```hcl
output "passwords" {
  sensitive = true
  value = {
    for user, user_login in aws_iam_user_login_profile.users : user => user_login.password
  }
}
```

> ⚠️ Passwords are marked **sensitive** — they will not appear in logs but can be viewed with:

```sh
terraform output -json passwords
```

---

## 🧑‍💻 Usage

```sh
terraform init
terraform plan
terraform apply
```

---

## 📌 Requirements

* AWS Provider = 6.11.0
* AWS account credentials configured

---

## 🔗 Follow My Journey

* 🌐 [Hashnode Blogs](https://hashnode.com/@abulraheem)
* 🐦 [X (Twitter)](https://x.com/yourhandle)
* 💻 [GitHub](https://github.com/yourusername)



Do you also want me to prepare a **Hashnode blog draft** for this project, similar to your other project blogs, so you can publish it as *Day 15: IAM User Management with Terraform*?
```
