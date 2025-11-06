job "odoo-app" {
  datacenters = ["dc1"]
  type        = "service"

  group "web" {
    network {
      port "web" {
        static = 8069 
      }
    }

    task "odoo" {
      driver = "docker"

      #variáveis de ambiente apontando para um banco local
      env {
        PGHOST     = "<SEU_HOST>"
        PGPORT     = "5432"
        PGDATABASE = "odoo_db"
        PGUSER     = "odoo_user"
        PGPASSWORD = "*******" 
        ODOO_RC_DBFILTER = ".*"
      }

      config {
        image = "ghcr.io/thnalmeida/doodbav16:main"
        ports = ["web"]
      }

      service {
        name = "odoo-web-ui"
        port = "web"
      }
    }
  }
}