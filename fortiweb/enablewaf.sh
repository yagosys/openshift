#!/bin/bash -x
podname=$(kubectl get pods -l app=fortiweb -n fortiweb -o=jsonpath='{.items[*].metadata.name}')
kubectl exec -i po/$podname -n fortiweb -- /bin/cli admin console <<EOF
config server-policy policy
edit "fortiwebingressrulepolicy"
set web-protection-profile "Inline Extended Protection"
end
EOF

