# tf-main
The main terraform infrastructure repo containing modules in other tf-* repositories.

```bash
export TF_VAR_GITHUB_OWNER=...
export TF_VAR_GITHUB_TOKEN=...
```

```terraform
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
...
terraform destroy
```


```bash
gcloud container clusters get-credentials main --zone europe-west3-c --project k8s-demo-422613
```
```bash
kubectl get ns
```
```bash
curl -s https://fluxcd.io/install.sh | bash
```
```bash
flux logs -f
```


- ns.yaml
```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: demo
```
- kbot-gr.yaml
```yaml
---
apiVersion: source.toolkit.fluxcd.io/v1
kind: GitRepository
metadata:
  name: kbot
  namespace: demo
spec:
  interval: 1m0s
  ref:
    branch: main
  url: https://github.com/vlad-batrak/kbot
```
- kbot-hr.yaml
```yaml
---
apiVersion: helm.toolkit.fluxcd.io/v2beta1
kind: HelmRelease
metadata:
  name: kbot
  namespace: demo
spec:
  chart:
    spec:
      chart: ./helm
      reconcileStrategy: ChartVersion
      sourceRef:
        kind: GitRepository
        name: kbot
  interval: 1m0s
```


```bash
flux get all -A
```

```bash
kubectl get po -n demo
kubectl describe po -n demo
```