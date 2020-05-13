#!/bin/bash

filedir="."

# use copy is best
kubectl apply -f "$filedir/k8s_new.yaml"
kubectl cp "$filedir/1-host-ps.sh" app-shell-test-2:/tmp/1-host-ps.sh
kubectl exec -it app-shell-test-2 -- sh
