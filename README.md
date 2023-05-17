# guestbook

referenceed:
- https://docs.vmware.com/jp/VMware-vSphere/8.0/vsphere-with-tanzu-tkg/GUID-A6348191-D403-4CDA-9183-4F4C28A6B093.html

Check StorageClass.
```
kubectl get sc default
```

## Run GuestBook.

Create Namespace.
```
kubectl create ns guestbook-01
```

Create PVC.
```
kubectl apply -f guestbook-pvc.yml -n guestbook-01
```

Create GuestBook App.
```
kubectl apply -f guestbook.yml -n guestbook-01
```

Check EXTERNAL-IP.
```
kubectl get svc -n guestbook-01
```

## Remove GuestBook.

Delete GuestBook App.
```
kubectl delete -f guestbook.yml -n guestbook-01
```

Delete PVC.
```
kubectl delete -f guestbook-pvc.yml -n guestbook-01
```

Check PV.

```
kubectl get pv
```

(Option) Delete PV.
```
kubectl delete pv --wait=false PV_NAME
kubectl patch pv PV_NAME -p '{"metadata":{"finalizers":null}}'
```

Delete Namespace.
```
kubectl delete ns guestbook-01
```

EOF
