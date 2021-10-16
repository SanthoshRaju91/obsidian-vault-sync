      

Installing Kubernetes on machine

  

1.  Install kubectl the kubernetes client 

With brew on Mac brew install kubectl

Check the version kubectl version —client

  

Install minikube

  

Brew cask install minikube

  

Install docker-machine-driver-xhyve for running the kubernetes cluster

  

Brew install docker-machine-driver-xhyve

  

Execute the xhyve commands given at the end

  

Now run the minikube with vm driver as chive 

  

Minikube start —vm-driver=xhyve

  

  

  

Getting current context for kubectl

  

Kubectl config current-context

  

Get all the nodes in current cluster from kubectl

  

Kubectl get nodes

  

Stopping the minikube 

  

Minikube stop - this only stops the local k8s cluster

  

To Delete the local k8s cluster use minikube delete

  

  

To start a minikube with a specific version on kubernetes as their k8s cluster, use

  

Minikube start —vm-driver=xhyve —kubernetes-version=“v1.6.0”

  

minikube start -p <name> to create a new cluster