# Storing terraform state in the cloud
terraform {
  backend "s3" {
    bucket                      = "XXXXXXXXXXX"
    key                         = "terraform.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}


/*

For the credentials part, 2 methods:
1 - Simply use 
export TF_VAR_access_key=XXXXXXXX
export TF_VAR_secret_key=XXXXX

2 - Otherwise
Create a ~/.aws/credentials
[default]
aws_access_key_id=<SCW_ACCESS_KEY>
aws_secret_access_key=<SCW_SECRET_KEY>
region=fr-par

*/
