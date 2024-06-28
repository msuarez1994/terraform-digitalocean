resource "digitalocean_ssh_key" "dev" {
    name       = "dev"
    public_key = file("~/.ssh/id_rsa.pub")
}