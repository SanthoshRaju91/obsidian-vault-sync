docker swarm join --token SWMTKN-1-5wlzmbwpcw7nby3zxgpefh9h9b55k8nqxv7g7lltwwczrv3150-8tqxtts223ggzhvxvemqued5q 192.168.50.100:2377


Monitoring and troubleshooting

Monitor deployments, pods, nodes and services.

Options

Key monitoring and alerting options

- Web ui dashboard
- Metrics server
- kube-state-metrics
- Prometheus
- Grafana
- Many more....

Startup ideas are kubernetes monitoring. Everyone wants to get into this space.

Troubleshooting techniques with kubectl

Key troubleshooting commands

```
# Pod details
kubectl get pod [pod-name] -o yaml

kubectl get pod [pod-name] -o json

# Description of the pod
kubectl describe pod [pod-name]

# Logging into the terminal of the container running in the pod
kubectl exec [pod-name] -it sh
```

Viewing Pod logs

```
# Logs of the pod
kubectl logs [pod-name]

# Logs of specific container inside the pod
kubectl logs [pod-name] -c [container-name]

# Logs of the previously destroyed pod
kubectl logs -p [pod-name]

# Streaming the logs
kubectl logs -f [pod-name]
```


```
# Information about the nginx deployment
kubectl get deploy nginx -o yaml

# Describing
kubectl describe deployment nginx

# Looking at the pods
kubectl get pods

# Looking into the nginx pod
kubectl get pod [pod-name] -o yaml
```

