# 1) Creating Local-Resource

# resource "local_file" "CloudComputing" {
#   content  = "Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. "
#   filename = "CloudComputing_Intro.html"
# }

# 2) Using Locals

# resource "local_file" "CloudComputing" {
#   content  = local.locals_ContentForFile
#   filename = local.locals_Filename
# }

# locals {
#   locals_Filename="CloudComputing_Intro.py"
#   locals_ContentForFile="CREATING PYTHON FILE WITH CONTENT : Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. "
# }

# 3) Creating Random Resource

# resource "random_id" "Random_Password" {
#   byte_length = 4
# }

# resource "local_file" "Password_File" {
#   content  = "${random_id.Random_Password.hex}"
#   filename = "Password.txt"
# }

# resource "random_id" "Random_OTP" {
#   byte_length = 1
# }

# resource "local_file" "OTP_File" {
#   content  = "${random_id.Random_Password.dec}"
#   filename = "OTP.txt"
# }

# 4) Creating Variables in Variables.tf and using them , also Implementing Values.Tfvars file

# To get values from Values.tfvars command is : terraform plan -var-file="Values.tfvars"

# resource "local_file" "String-Variable" {
# content = "Creating CSS File."
# filename = var.String-Type
# }

# resource "local_file" "Number-Variable" {
# content = var.Number-Type
# filename = "NumberVariable.js"
# }

# resource "local_file" "List-String-Variable" {
# content = var.List-Type-String[1]
# filename = "ListVariableStringOnly.json"
# }

# resource "local_file" "List-Any-Variable" {
# content = var.List-Type-Any[2]
# filename = "ListVariableAny.txt"
# }

# resource "local_file" "Map-Variable" {
# content = var.Map-Type["content"]
# filename = var.Map-Type["filename"]
# }

# resource "local_file" "Object-Variable" {
# content = var.Object-Type.name
# filename ="ObjectVariable.html"
# }
