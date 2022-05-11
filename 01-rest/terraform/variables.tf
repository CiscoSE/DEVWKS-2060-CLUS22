variable "standalone_sernum" {
    description = "Identifier (Serial Number) of Standalone Server"
    type = string
    default = "SERVER_SERIAL"
}

variable "standalone_token" {
    description = "Secret key (rotating) of Standalone Server"
    type = string
    default = "SERVER_SECRET"
}
