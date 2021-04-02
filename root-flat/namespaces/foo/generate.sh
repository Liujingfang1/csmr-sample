#!/bin/bash

for num in {1..4}
do
  cat > secret_$num.yaml <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: secret-$num
  namespace: foo
data:
  extra: YmFyCg==
EOF
done
