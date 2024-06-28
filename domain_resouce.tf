resource "digitalocean_domain" "domain" {
    name = var.domain
}

resource "digitalocean_record" "a_record" {
    domain = digitalocean_domain.domain.name
    type   = "A"
    name   = "@"
    value  = digitalocean_droplet.web.ipv4_address
    ttl    = 1800
}

resource "digitalocean_record" "www_record" {
    domain = digitalocean_domain.domain.name
    type   = "CNAME"
    name   = "www"
    value  = "@"
    ttl    = 1800
}

resource "digitalocean_record" "api_record" {
    domain = digitalocean_domain.domain.name
    type   = "A"
    name   = "api"
    value  = digitalocean_droplet.web.ipv4_address
    ttl    = 1800
}
