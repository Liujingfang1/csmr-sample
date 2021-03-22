#!/bin/bash

for num in {1..100}
do
  cat > storagebucket_$num.yaml <<EOF
apiVersion: storage.cnrm.cloud.google.com/v1beta1
kind: StorageBucket
metadata:
  annotations:
    cnrm.cloud.google.com/force-destroy: "false"
  labels:
    label-one: "value-one"
  name: jingfangliu-194020-sample-$num
spec:
  bucketPolicyOnly: true
  lifecycleRule:
    - action:
        type: Delete
      condition:
        age: 7
  versioning:
    enabled: true
  cors:
    - origin: ["http://example.appspot.com"]
      responseHeader: ["Content-Type"]
      method: ["GET", "HEAD", "DELETE"]
      maxAgeSeconds: 3600
EOF
done
