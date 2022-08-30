provider "aws" {
    profile = var.profile
    region = "us-east-1"
}

resource "aws_db_instance" "default" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "postgres"
    instance_class = "db.t3.micro"
    db_name = "contacts_db" // name of the db
    username = "postgres"
    password = var.password
    identifier = var.id
    // ADD YOUR SECURITY GROUP HERE WITH POSTGRESQL INBOUND RULES 
    vpc_security_group_ids = [ "" ]
    publicly_accessible = true
}
