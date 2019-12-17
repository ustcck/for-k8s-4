#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-apply.sh

logSummary(){
    echo ""
    echo "#####################################################"
    echo "Please find the below useful endpoints,"
    echo "JHipster Console - http://jhipster-console.default."
    echo "#####################################################"
}

kubectl apply -f registry/
kubectl apply -f gateway/
kubectl apply -f blog/
kubectl apply -f store/
kubectl apply -f console/

logSummary
