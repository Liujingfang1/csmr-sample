#!/bin/bash

for num in {1..4000}
do
  cat > secret_$num.yaml <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: secret-$num
  namespace: foo
type: kubernetes.io/service-account-token
data:
  extra: YmFyCg==
EOF
done
