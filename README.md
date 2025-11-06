
## Odoo com PostgreSQL Local no Nomad (odoo-pglocal.nomad.hcl)
Um arquivo de job do Nomad para implantar o Odoo com um banco de dados PostgreSQL local.

Este job do Nomad foi projetado para subir uma instância completa do Odoo de forma rápida e simples. Ele provisiona dois serviços dentro do mesmo grupo de alocação (group) do Nomad:

Serviço Odoo: A aplicação web principal do Odoo.

Serviço PostgreSQL: Um banco de dados dedicado que roda localmente.


**Características:**

- Implantação Única: Um único arquivo hcl gerencia tanto a aplicação quanto o banco de dados.

- Co-localização: O Odoo e o PostgreSQL rodam na mesma máquina cliente do Nomad.

- Persistência de Dados: Configurado para usar volumes do Nomad para persistir os dados do PostgreSQL e os addons do Odoo.

- Configuração via Variáveis: Facilmente configurável usando variáveis do Nomad.

**Pré-requisitos:**

Antes de executar este job, você precisará de:

- Um **cluster Nomad** funcional.

- A **CLI do Nomad** instalada e configurada para se comunicar com o cluster.

- **Nomad conectado ao Consul**

- O **driver Docker** habilitado nos seus clientes Nomad.

- **Volumes persistentes** configurados nos nós clientes para persistência de dados.
