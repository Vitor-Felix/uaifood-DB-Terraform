# Infraestrutura RDS para o Projeto uaifood-db-1

Este repositório contém a configuração do banco de dados RDS para o projeto **uaifood-db-1** na AWS.

## Como usar

1. **Instale o Terraform** (caso não tenha).
2. **Configure as credenciais da AWS** no seu ambiente.
3. **Inicie o Terraform**:

    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

4. Para destruir a infraestrutura:

    ```bash
    terraform destroy
    ```

## Variáveis

As variáveis podem ser configuradas em `terraform.tfvars` ou diretamente no arquivo de variáveis.

