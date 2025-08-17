TERRAFORM REMOTE BACKEND SETUP:
when we create infra the information of resources will store on state file.
so it will be tracking the infra information.
so we need to take backup of that file.
if we lost that file we cant track the infra.
so we prefer to locate the state file on remote loaction.
here im using s3 as remote backend.