locals {
  users_from_yml = yamldecode(file("${path.module}/user-roles.yml")).users
}

output "users" {

  value = local.users_from_yml

}