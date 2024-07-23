kubectl config set-context --current --namespace bamoe-app
helm delete kafka 
kubectl delete job kafka-provisioning  
helm delete postgresql 
kubectl delete -f 3-keycloak/keycloak-configmap.yaml
helm delete keycloak 
kubectl delete -f 4-bamoe-services/1-data-index
kubectl delete -f 4-bamoe-services/2-management-console
kubectl delete -f 4-bamoe-services/3-task-console
kubectl delete -f 5-app
kubectl delete pvc --all