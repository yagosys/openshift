for f in *.yaml; do kubectl delete -f "$f"; done
kubectl delete svc goweb
kubectl delete svc nginx
kubectl delete deployment goweb
kubectl delete deployment nginx
