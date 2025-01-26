gcloud config set account mis.stf17@gmail.com
gcloud config configurations list
gcloud config list project
gcloud config list
gcloud info
gcloud container clusters get-credentials caco-cluster1 --region=australia-southeast1


# oneemployee
gcloud config set project lautan-luas-hr-dept
gcloud config set compute/zone asia-southeast2-a
gcloud config set account ci-cd-one-employee@lautan-luas-hr-dept.iam.gserviceaccount.com
gcloud container clusters get-credentials hr-dept-cluster-1 --zone=asia-southeast2-a --project=lautan-luas-hr-dept


helm list -n kong
helm upgrade kong-cp -n kong kong/kong --values values-cp.yaml
helm template kong-cp kong/kong -n kong --values ./values-cp.yaml > kong-cp3.yaml
helm install kong-cp kong/kong -n kong --values ./values-cp.yaml

helm template kong-dp kong/kong -n kong --values ./values-dp.yaml > kong-dp.yaml
helm upgrade kong-dp kong/kong -n kong --values ./values-dp.yaml

kubectl exec -it kong-cp-kong-5cbcd4d875-plxwj -c proxy -n kong -- kong config db_import <<EOF
_format_version: "1.1"
rbac_users:
- name: kong-cp
  user_token: caco123
  role: super-admin
EOF

sudo apt install apache2 # for httpd

# kong_admin;caco123