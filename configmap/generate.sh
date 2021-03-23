#!/bin/bash

for num in {1..2000}
do
  nm=$(($num/4))
  cat > configmap_$num.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: configmap-$num
  namespace: ns-$nm
data:
  foo: bar
  key: value-$num
EOF
done
