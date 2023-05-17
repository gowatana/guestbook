# guestbook

Check StorageClass.
```
kubectl get sc default
```

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

