resource "digitalocean_droplet" "web" {
    image  = "ubuntu-20-04-x64"
    name   = "web-1"
    region = "nyc1"
    size   = "s-2vcpu-2gb"
    user_data = file("cloud-config.yaml") # Puedes omitir esta línea si no tienes un archivo cloud-config.yaml
    ssh_keys = [digitalocean_ssh_key.msuarez.fingerprint]
}