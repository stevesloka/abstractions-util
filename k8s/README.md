## Create MySQL Root Password Secret

kubectl create secret generic mysql-creds --from-file=./k8s/mysql-root-password

## Create Speakers configmap

kubectl create configmap web-speakers --from-file=data/speakers.json
