#!/bin/bash -x

# Get all pod names matching the label app=fortiweb in the fortiweb namespace
podnames=$(kubectl get pods -l app=fortiweb -n fortiweb -o=jsonpath='{.items[*].metadata.name}')

# Iterate over each pod name
for podname in $podnames; do
  kubectl exec -i po/$podname -n fortiweb -- /bin/cli admin console <<EOF
config server-policy policy
edit "fortiwebingressrulepolicy"
set web-protection-profile "Inline Extended Protection"
end
EOF
done

