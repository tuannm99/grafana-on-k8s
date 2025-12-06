kubectl create namespace monitoring

helm repo add grafana https://grafana.github.io/helm-charts
helm repo add influxdata https://helm.influxdata.com/
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts  # :contentReference[oaicite:0]{index=0}
helm repo update

# install
helm upgrade --install grafana grafana/grafana \
  -n monitoring \
  -f ./k8s/values-grafana.yml

helm upgrade --install prometheus prometheus-community/prometheus \
  -n monitoring \
  -f ./k8s/values-prometheus.yml

helm upgrade --install influxdb2 influxdata/influxdb2 \
  -n monitoring \
  -f ./k8s/values-influxdb2.yml


# with update -> remove --install
# uninstall will remove pv,pvc -- careful
