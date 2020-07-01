listener = {
  tcp = {
    address                         = "[::]:8200"
    cluster_address                 = "[::]:8201"
    tls_disable                     = "false"
    tls_client_ca_file              = "/etc/tls/ca.pem"
    tls_cert_file                   = "/etc/tls/vault-unlock.pem"
    tls_key_file                    = "/etc/tls/vault-unlock-key.pem"
    tls_min_version                 = "tls12"
    tls_prefer_server_cipher_suites = true
    tls_cipher_suites               = "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"
  }
}

storage = {
  consul = {
    address              = "localhost:8500"
    check_timeout        = "30s"
    path                 = "vault-unlock/"
    disable_registration = "true"
    token                = "this_is_token_to_access_consul_acl_protected_for_vault-unlock-kv"
  }
}

api_addr = "https://vault.vault-unlock.svc.cluster.local:8200"
ui       = true

