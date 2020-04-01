# Fleet apply docker action

This action runs `flt apply` on your git repo. https://github.com/rancher/fleet#quick-start

## Inputs

### `directory-to-bundle`

It requires `kubeconfig` to be put as a secret in your github repo. To see how to add secret to your repo, check https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets. 

Note: you need to encode your kubeconfig with base64 before you put it into github secrets.

```
cat ${KUBECONFIG} | base64
```

## Example usage

```yaml
env:
  KUBECONFIG_SECRET: ${{ secrets.kubeconfig }}

steps:
- uses: actions/flt-apply@v0.0.1
  with:
    directory-to-bundle: './dir/to/bundle'
```