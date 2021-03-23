#!/bin/bash

for num in {1..500}
do
  cat > namespace_$num.yaml <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: ns-$num
EOF
done
