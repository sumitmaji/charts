# Charts


# Install Helm:

- Go to kubernetes [helm](https://github.com/kubernetes/helm) package in github. Move to Installation section and use Linux version to download the binary, e.g.

```console
wget https://kubernetes-helm.storage.googleapis.com/helm-v2.8.2-linux-amd64.tar.gz
```

- Setup helm:

```console
tar -zxvf helm-v2.8.2-linux-amd64.tar.gz && \
sudo ln -s linux-amd64/helm /usr//bin/helm
kubectl apply -f rbac.yaml && \
helm init --service-account tiller
helm version
```

(Note: Due to some bug kubernets service in default namespace points to incorrect port in the endpoint, hence need to chnage this endpoint port(from 6443 to 443) on every vm restart. Because of this bug, helm does not work. )

```console
kubectl edit endpoints kubernetes -n default
```

# Useful helm command

- To list helm releases

```console
helm list
```

- To install helm chart

```console
helm install path_to_chart --name release_name
```

- To remove all kubernetes objects

```console
helm del --purge relese_name
```

- To keep release information at the same time delete kubernetes objects

```console
helm del relese_name
```


