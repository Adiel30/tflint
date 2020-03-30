config {
  module     = true
  deep_check = true
  force      = false

  aws_credentials = {
    access_key = ""
    secret_key = ""
    region     = ""
  }


  varfile = ["tflint.tfvars"]

}


