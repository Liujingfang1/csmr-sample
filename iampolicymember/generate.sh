#!/bin/bash

for num in {1..300}
do
  cat > iam_policy_member_$num.yaml <<EOF
apiVersion: iam.cnrm.cloud.google.com/v1beta1
kind: IAMPolicyMember
metadata:
  name: iampolicymember-sample-orglevel-$num
spec:
  member: serviceAccount:iampolicymember-dep-orglevel@jingfangliu-194020.iam.gserviceaccount.com
  role: roles/storage.admin
  resourceRef:
    apiVersion: resourcemanager.cnrm.cloud.google.com/v1beta1
    kind: Organization
    external: google
EOF
done
