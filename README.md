## Prerequisites
* [Git](https://git-scm.com/downloads)
* IDE ([VSCode](https://code.visualstudio.com/download), [IntelliJ](https://www.jetbrains.com/idea/download/#section=windows), [Eclipse](https://www.eclipse.org/downloads/))
* [Terraform](https://www.terraform.io/downloads.html) (Install Terraform by unzipping it and moving it to a directory included in your system's PATH)
* [AWS CLI](https://aws.amazon.com/pt/cli/)
* You need an account in AWS, you can have a account [free](https://aws.amazon.com/pt/free) for twelve months

## Step-by-step to run the Terraform
From a terminal, open on the root of the project

This is to have the o project from GitHub:
```
git clone https://github.com/TiagoMarquesTR/terraform.git
cd terraform
```
Create an user(IAM), by URL https://console.aws.amazon.com/iam/home?region=us-east-1#/users and click in "Add user", select acess "Programmatic access" and set permissions for "AdministratorAcess". Download .csv, very important.
Open the console and type:
```
aws configure
```

Now, run this command to generate a key ssh:
```
ssh-keygen -t terraform-aws -t rsa
Enter file in which to save the key (/.ssh/id_rsa): terraform-aws
```

Copy the file private to /.ssh of your user

Import [Key Pair](https://us-east-2.console.aws.amazon.com/ec2/v2/home?region=us-east-2#KeyPairs:sort=keyName)

Initialize the terraform with this command:
```
terraform init
```

Create your infra with this basic commad:
```
terraform apply
```

Finish

## Basics commands

Initialize terraform project:
```
terraform init
```

Verify infrastructure before building:
```
terraform plan
```

Create infrastructure
```
terraform apply
```

Destroy infrastructure
```
terraform destroy
```