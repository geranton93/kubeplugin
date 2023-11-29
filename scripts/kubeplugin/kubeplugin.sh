#!/bin/bash

# Check for required argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <namespace>"
  exit 1
fi

NAMESPACE=$1

# Retrieve resource usage statistics from Kubernetes
kubectl top pods --namespace=$NAMESPACE | tail -n +2 | while read line
do
  # Extract CPU and memory usage from the output
  NAME=$(echo $line | awk '{print $1}')
  CPU=$(echo $line | awk '{print $2}')
  MEMORY=$(echo $line | awk '{print $3}')

  # Replace "<none>" with "0" for both CPU and Memory
  CPU=${CPU:-0}
  MEMORY=${MEMORY:-0}

  # Output the statistics to the console
  echo "Resource, Namespace, Name, CPU, Memory"
  echo "pod, $NAMESPACE, $NAME, $CPU, $MEMORY"
done
