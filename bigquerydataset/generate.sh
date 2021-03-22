#!/bin/bash

for num in {1..100}
do
  cat > bigquerydataset_$num.yaml <<EOF
apiVersion: bigquery.cnrm.cloud.google.com/v1beta1
kind: BigQueryDataset
metadata:
  name: bigquerytabledep-$num
spec:
  friendlyName: bigquerytable-dep
EOF
done
