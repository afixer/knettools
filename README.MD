# KNetTools

KNetTools is a repository that provides a Docker container equipped with network tools for debugging purposes. It is particularly useful for Kubernetes environments, as the provided command allows users to run the container within a Kubernetes cluster for network troubleshooting. The container image is hosted on GitHub Container Registry.

Preinstalled tools:

- curl
- dig
- nslookup
- kubectl

## Usage

```bash
kubectl run -i --tty --rm --image ghcr.io/afixer/knettools:main knettools /bin/bash
```
