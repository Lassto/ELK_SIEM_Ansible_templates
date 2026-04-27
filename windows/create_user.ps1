# Set the password
$Password = Read-Host -AsSecureString "PWD for the new user"

# Define parameters for the new user
$params = @{
Name = 'ansible'
Password = $Password
FullName = 'Ansible'
Description = 'User Ansible'
}

# Create user
New-LocalUser @params


