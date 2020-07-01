# Consul ACL for write access to vault/ prefix key-value

key_prefix "vault/" {
  policy = "write"
}