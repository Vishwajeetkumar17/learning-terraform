TERRAFORM WORKSPACE:
WORKSPACE: Where we write the code and execute operations.
it is used to isolate the env.
in real time all the works we do on workspaces only.
if we perform an operation on one workspace it wont affect another workspace.


NOTE:
1. we can't delete our current workspace.
2. we can't delete our workspace without deleting resources.
3. we cant't delete default workspace.

COMMANDS:

terraform workspace list	: to list workspaces
terraform workspace new dev	: to create a new workspace	
terraform workspace show	: to show current workspace
terraform workspace select prod	: to switch the workspaces
terraform workspace delete prod	: to delete the workspaces