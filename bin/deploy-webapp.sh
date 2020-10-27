#!/bin/sh

# This script will update fyp-webapp to a new image:tag, and check if it
# is successful. If UNSUCCESSFUL for whatever reason, it will rollback 
# the release.

NAMESPACE=fyp
DEPLOYMENT=$1
CONTAINER=$2
NEW_IMAGE_TAG=$3

if [[ $# -eq 0 ]]; then
cat <<EOF
Usage:
  bin/deploy-webapp.sh <deployment name> <container name> <new image tag>

  If deployment fails beyond progress deadline

EOF
exit 0;
fi

kubectl -n $NAMESPACE set image deployment $DEPLOYMENT $CONTAINER=$NEW_IMAGE_TAG --record;
kubectl rollout status deployment $DEPLOYMENT;

ROLLOUT_STATUS=$?;
echo $ROLLOUT_STATUS;

if [[ $ROLLOUT_STATUS -gt 0 ]]; then
  kubectl rollout undo deployment $DEPLOYMENT;
fi

exit $ROLLOUT_STATUS;