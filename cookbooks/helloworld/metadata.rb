# Defines metadata for the helloworld cookbook.
name 'helloworld'

# Declare a dependency on the apt cookbook, see https://supermarket.chef.io/cookbooks/apt
depends 'apt', '~> 3.0' # Pessimistically lock to minor version, see https://docs.chef.io/cookbook_versions.html
