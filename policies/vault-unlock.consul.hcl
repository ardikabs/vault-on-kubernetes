# Consul ACL for write access to vault-unlock/ prefix key-value

key_prefix "vault-unlock/" {
  policy = "write"
}