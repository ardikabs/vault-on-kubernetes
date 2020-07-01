# vault-on-kubernetes

## Prerequisites
1. [CFSSL](https://github.com/cloudflare/cfssl)
2. Kubernetes Cluster with minimal 3 nodes worker
3. Consul binary, for create GOSSIP Encryption key `consul keygen`

## Requirements
These setup is intended to meet some requirements such:
1. High Availaibility with AutoUnseal mechanism
2. Resilient to Failure
3. Reliability