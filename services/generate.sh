#!/bin/bash

for num in {1..100}
do
  cat > service_$num.yaml <<EOF
apiVersion: v1
kind: Service
metadata:
  name: my-service-$num
  namespace: ns-$num
spec:
  selector:
    app: MyApp
  ports:
    - protocol: TCP
      port: 80
      targetPort: 9376  
EOF
done
