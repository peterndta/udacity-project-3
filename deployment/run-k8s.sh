kubectl delete deployment backend-user
kubectl delete services backend-user
kubectl delete deployment backend-feed
kubectl delete services backend-feed
kubectl delete services reverseproxy
kubectl delete services reverseproxy-ep 


kubectl apply -f aws-secret.yaml --request-timeout=120s
kubectl apply -f env-secret.yaml --request-timeout=120s
kubectl apply -f env-configmap.yaml --request-timeout=120s
kubectl apply -f backend-feed-deployment.yaml --request-timeout=120s
kubectl apply -f backend-feed-service.yaml --request-timeout=120s
kubectl apply -f backend-user-deployment.yaml --request-timeout=120s
kubectl apply -f backend-user-service.yaml  --request-timeout=120s
kubectl apply -f reverseproxy-deployment.yaml --request-timeout=120s
kubectl apply -f reverseproxy-service.yaml --request-timeout=120s

kubectl expose deployment reverseproxy --type=LoadBalancer --name=reverseproxy-ep --port=8080

kubectl get deployment
kubectl get services
kubectl get pods

