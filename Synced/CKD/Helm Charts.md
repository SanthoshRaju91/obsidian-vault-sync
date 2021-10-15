Pre-Requisties

- Basic concepts related to Kubernetes
	- POD
	- SERVICE

Packaging applications with Helm for Kubernetes

- Be organized with archives
- Pack your resources and organise them with Package Managers
- K8s application contain many k8s objects
- Helm makes it easy to install applications in k8s and manage dependencies and versions.

Installing applications on k8s can be done in one of the following methods.
1. REST Client
2. Go Client
3. Kubectl

With Kubectl, we defined each object in a YAML file. And install them with `kubectl create` command one-by-one.

Limitations

- Packaging
	- With kubectl you don't install the application as an atomic set of k8s objects, but rather you deploy each object separately.
	- One object may depend on other, so the order in which each object is deployed matters.
	- With Helm we install the application (k8s objects) as one single entity.
- Versioning
- Customization
- Dependency

What is Helm ?
Helm is a package manager for Kubernetes

Packages are called Charts, and Helm is the package manager.
Like node_modules in the Package, and npm is the package manager in JS.

Namespaces - Virtual cluster in K8s cluster. So you group resources in a namespace.

Helm stores the release manifest in secrets, this secret is acessible cluster wide because it is stored in the default system namespace

If you target a particular namespace for installing the application, then Helm stores the release manifest, in the secrets of the targeted namespace.

Enable ingress addon, to access the deployed services in k8s cluster in minikube.
`minikube addons enable ingress`

Configure the name resolution for the cluster.

1. Get cluster node ip `minikube ip`
2. Then resolving the two domain names

Check kubectl version
`kubectl version --short`

Installing helm

1. Download the binary 
```
curl -LO https://get.helm.sh/helm-v3.1.1-darwin-amd64.tar.gz
```
2. Extract it
```
tar -zxvf helm-v3.1.1-darwin-amd64.tar.gz
```
3. Copy the helm binary file to bin directory
```
sudo mv darwin-amd64/helm /usr/local/bin/helm
```

By default, Helm tree is not configured to use any repository. If you need to install existing packages, you need to add at least one stable repository consisting charts

```
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
```
from version 2.7 helm deprecated the above repository

```
helm repo add stable https://charts.helm.sh/stable
```

Install application in helm

```
helm install <name> <application>

# Eg.
helm install demo-mysql stable/mysql
```

Cleaning Helm

```
helm uninstall demo-mysql
```

Demo of release, upgrade, rollback and delete

Release
```
helm install demo-guestbook guestbook
```

Upgrade
```
helm upgrade demo-guestbook guestbook
```

```
helm status demo-guestbook
```

Rollback

```
helm rollback demo-guestbook 1
```

History of the all the changes
```
helm history demo-guestbook
```

Delete a release
```
helm uninstall demo-guestbook
```

With Helm Releases, we can install/deploy applications with unique name for resources.

Because in a namespace, we cannot have a multiple application with the same name for each of the resources.

