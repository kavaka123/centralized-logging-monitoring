#!/usr/bin/env bash

KUBECTL=`which kubectl`

$KUBECTL delete configmap logstash-conf -n wso2
$KUBECTL delete configmap logstash-yml -n wso2
$KUBECTL delete configmap kibana-yml -n wso2
$KUBECTL delete -f centralized-logging-deployment.yaml -n wso2
$KUBECTL delete -f wso2apim-deployment.yaml -n wso2
$KUBECTL delete namespace -n wso2
