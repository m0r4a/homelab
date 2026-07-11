## TODOs

- [ ] Find a way to automatically add the yaml-language-server configs to all files or configure nvim to do so

## CLI tools

- cilium
- flux
- cmctl (cert manager)
- kubectl / kubecolor
- age (encryption)
- sops (secrets management)

# Non git-ops stuff

1. Sops secret for flux

```bash
 kubectl create secret generic <sops_secret_name> \
  --namespace=flux-system \
  --from-file=age.agekey=<path>/age.agekey
```
