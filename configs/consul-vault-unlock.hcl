datacenter           = "dc1"
bind_addr            = "0.0.0.0"
client_addr          = "127.0.0.1"
disable_host_node_id = true
log_level            = "INFO"
data_dir             = "/data"
domain               = "cluster.local"
ports = {
  http = 8500
}
leave_on_terminate = true
retry_join = [
  "consul-0.consul.consul.svc.cluster.local:8301",
  "consul-1.consul.consul.svc.cluster.local:8301",
  "consul-2.consul.consul.svc.cluster.local:8301"
]
telemetry = {
  prometheus_retention_time = "5m"
}

ca_file                = "/etc/tls/ca.pem"
verify_incoming        = fals
verify_outgoing        = true
verify_server_hostname = true

encrypt_verify_incoming = true
encrypt_verify_outgoing = true

auto_encrypt = {
  tls = true
}

acl = {
  tokens = {
    default = "e617f7e4-6220-a411-a91b-b3b567c4a710"
  }
}

service = {
  name = "vault-unlock"
}
