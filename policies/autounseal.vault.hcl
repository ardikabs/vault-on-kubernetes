# Vault ACL for make a transit path for autounseal purposes
# This is based on the document https://learn.hashicorp.com/vault/day-one/autounseal-transit

path "transit/encrypt/autounseal" {
  capabilities = ["update"]
}

path "transit/decrypt/autounseal" {
  capabilities = ["update"]
}
