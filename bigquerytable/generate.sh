#!/bin/bash

for num in {1..100}
do
  cat > bigquery_$num.yaml <<EOF
apiVersion: bigquery.cnrm.cloud.google.com/v1beta1
kind: BigQueryTable
metadata:
  name: bigquerytablesample-$num
  labels:
    data-source: "external"
    schema-type: "auto-junk"
spec:
  description: "BigQuery Sample Table"
  datasetRef:
    name: bigquerytabledep-$num
  friendlyName: bigquerytable-sample
  externalDataConfiguration:
    autodetect: true
    compression: NONE
    ignoreUnknownValues: false
    maxBadRecords: 10
    sourceFormat: CSV
    sourceUris:
      - "gs://gcp-public-data-landsat/LC08/01/044/034/LC08_L1GT_044034_20130330_20170310_01_T2/LC08_L1GT_044034_20130330_20170310_01_T2_ANG.txt"
      - "gs://gcp-public-data-landsat/LC08/01/044/034/LC08_L1GT_044034_20130330_20180201_01_T2/LC08_L1GT_044034_20130330_20180201_01_T2_ANG.txt"
EOF
done