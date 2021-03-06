listener = {
  tcp = {
    address                         = "[::]:8200"
    cluster_address                 = "[::]:8201"
    tls_disable                     = "false"
    tls_client_ca_file              = "/etc/tls/ca.pem"
    tls_cert_file                   = "/etc/tls/vault.pem"
    tls_key_file                    = "/etc/tls/vault-key.pem"
    tls_min_version                 = "tls12"
    tls_prefer_server_cipher_suites = true
    tls_cipher_suites               = "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"
  }
}

seal = {
  transit = {
    address         = "https://vault.vault-unlock.svc.cluster.local:8200"
    token           = "this_is_token_to_access_vault-unlock"
    disable_renewal = "false"
    key_name        = "autounseal"
    mount_path      = "transit/"
    tls_skip_verify = "false"
    tls_server_name = "vault"
    tls_ca_file     = "/etc/tls/ca.pem"
    tls_client_cert = "/etc/tls/vault.pem"
    tls_client_key  = "/etc/tls/vault-key.pem"
  }
}

storage = {
  consul = {
    address              = "localhost:8500"
    check_timeout        = "30s"
    path                 = "vault/"
    disable_registration = "true"
    token                = "this_is_token_to_access_consul_acl_protected_for_vault-kv"
  }
}
api_addr = "https://vault.vault.svc.cluster.local:8200"
ui       = true

