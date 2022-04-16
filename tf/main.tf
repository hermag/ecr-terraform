resource "docker_image" "backend" {
    name = "backend"
    build {
        path = "../app"
        dockerfile = "Dockerfile"
    }
}