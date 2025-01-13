helm list -n kong
helm upgrade kong-cp -n kong kong/kong --values values-cp.yaml
helm template kong-cp kong/kong -n kong --values ./values-cp.yaml > kong-cp3.yaml
helm install kong-cp kong/kong -n kong --values ./values-cp.yaml


kubectl exec -it kong-cp-kong-5cbcd4d875-plxwj -c proxy -n kong -- kong config db_import <<EOF
_format_version: "1.1"
rbac_users:
- name: kong-cp
  user_token: caco123
  role: super-admin
EOF

sudo apt install apache2 # for httpd

# kong_admin;caco123