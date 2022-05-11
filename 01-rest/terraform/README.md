# Instructions for Building Lab Infrastructure

## Intersight API Credentials

Option 1 (for local development):
- Use script to set the appropriate TF environment variables to point
to the API credentials. You'll have to define the SECURE environment
variable to indicate the directory on disk the files are stored.
    - DEVWKS-2060-Default-KeyID.txt: API Key ID string
    - DEVWKS-2060-Default-Secret.txt: PEM encoded API Secret Key

Option 2 (for Enterprise solutions):
- Define environment variables securely
    - TF_VARS_apikey with the string of the API Key ID
    - TF_VAR_secretkeyfile with the full path filename to the Secret Key file.

Note: Option 2 may require Terraform HCL changes to leverage the
**secretkey** approach to specify the whole contents of the Secret Key file
as opposed to the file name.

## Terraform Operations

terraform init
