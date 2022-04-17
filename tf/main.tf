resource "docker_image" "backend" {
    name = "backend"
    build {
        path = "../app"
        dockerfile = "Dockerfile"
    }
}

resource "aws_ecr_repository" "foo" {
  name                 = "backendimagerepo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}