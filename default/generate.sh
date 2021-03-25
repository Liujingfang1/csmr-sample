#!/bin/bash

for num in {1..5000}
do
  cat > configmap_$num.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: configmap-$num
  namespace: default
data:
  foo: bar
  key: value-$num
EOF
done
