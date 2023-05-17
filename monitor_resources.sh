for N in $(kubectl get nodes -o jsonpath='{.items[*].metadata.name}')
do
  echo "----------------------------------------"
  echo $N 
  kubectl describe nodes $N | grep "Allocated resources:" -A 8 | grep -v "Total limits"
done
