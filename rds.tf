resource "aws_db_instance" "db" {
    allocated_storage = 20
    db_name = "my_db"
    engine = "postgres"
    engine_version = "14"
    instance_class = "db.t3.micro"
    username = var.db-username
    password = var.db-password
}