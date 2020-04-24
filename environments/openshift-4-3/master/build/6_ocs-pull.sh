sudo podman pull quay.io/mulbc/ocs-operator:katacoda
sudo podman pull rook/ceph:v1.2.4
sudo podman pull noobaa/noobaa-operator:2.0.9
sudo podman pull docker.io/ceph/ceph:v14.2

sudo podman pull karansingh/e-library-backend-api-ks:latest
sudo podman pull karansingh/e-library-frontend-ks:latest
sudo podman pull mesosphere/aws-cli:latest
sudo podman pull docker.elastic.co/elasticsearch/elasticsearch:6.1.1

cat <<EOF | oc create -f -
apiVersion: operators.coreos.com/v1alpha1
kind: CatalogSource
metadata:
  name: ocs-catalogsource
  namespace: openshift-marketplace
spec:
  sourceType: grpc
  image: quay.io/mulbc/ocs-registry:katacoda
  displayName: OpenShift Container Storage
  publisher: Red Hat
EOF
