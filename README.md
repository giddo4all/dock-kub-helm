# Getting Started with MSA (Micro Service Architecture)
Getting started with MSA (Micro Service Architecture) using Docker, Kubernetes and Helm Charts.
1. Used minikube to setup Kubernetes cluster.
2. Setup script for Ubuntu (18.0.4 LTS) on AWS that installs all dependencies (Docker, Kubernetes, Minikube).


### Start minikube - Minikube runs a single-node Kubernetes cluster inside the instance.
`minikube start --vm-driver=none`

### Check status of the minikube
`minikube status`

### Deploy the service - a Hello world app using the tutum/hello-world image
`kubectl create -f deployment.yml`

### Get IP to reach the service
`minikube ip`


### Display information about the Deployment:
```
kubectl get deployments msadeployment
kubectl describe deployments msadeployment
```

### Display information about the Service
`kubectl get services msaservice`


### Display detailed information about the Service
`kubectl describe services msaservice`


### Use the minikube ip to access the Hello World application
`curl http://<minikube ip>:<nodeport>`

### To Clean up first delete the Service then delete the Deployment, the ReplicaSet, and the Pods that are running the app
```
kubectl delete deployment msadeployment
kubectl delete services msaservice
```


[Kubernetes Command Reference](https://kubernetes.io/docs/tutorials/stateless-application/expose-external-ip-address/)