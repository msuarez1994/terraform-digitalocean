### Terraform DigitalOcean 

El siguiente proyecto crea recursos en DigitalOcean (ssh keys, droplet, host, registros dns).

**Requisitos previos**
Instalación Terraform [docs](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

Generar API Token en DigitalOcean [DO API Token](https://cloud.digitalocean.com/account/api/tokens)

****
**Correr Terraform**
Agregar Token API de DO y editar archivo terraform.vars

```bash:
cp terraform.vars terraform.tfvars
```
Antes de iniciar ajustar datos en los archivos (variables.tf, ssh_keys.tf, domain_resouce.tf, resources.tf) en este orden.

Ajustar archivo cloud-config.yaml (**archivo para provisionar droplet**).

```bash:
terraform init
terraform plan
terraform apply -auto-approve
```

Y listo 😉