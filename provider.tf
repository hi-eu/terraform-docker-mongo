# Set the required provider and versions
terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
    }
  }
}

# use local docker as provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
