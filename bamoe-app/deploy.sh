kubectl config set-context --current --namespace bamoe-app
helm install kafka -f 1-kafka/values.yaml oci://registry-1.docker.io/bitnamicharts/kafka --wait
helm install postgresql -f 2-postgresql/values.yaml oci://registry-1.docker.io/bitnamicharts/postgresql --wait
kubectl apply -f 3-keycloak/keycloak-configmap.yaml
helm install -f 3-keycloak/values.yaml keycloak oci://registry-1.docker.io/bitnamicharts/keycloak --wait
kubectl apply -f 4-bamoe-services/1-data-index
kubectl apply -f 4-bamoe-services/2-management-console
kubectl apply -f 4-bamoe-services/3-task-console