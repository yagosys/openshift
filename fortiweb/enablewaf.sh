kubectl exec -i po/fweb70577-deployment-67646d7c48-jl876 -n fortiweb -- /bin/cli admin console <<EOF
config server-policy policy
edit "fortiwebingressrulepolicy"
set web-protection-profile "Inline Extended Protection"
end
EOF

