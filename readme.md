# Get Pod Info sample

Calls k8s api to get Pod info with out any configuration.

```
[node-info-deployment-794484ff78-c6dtl node-info-test] ----------------
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_SERVICE_PORT=443
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_PORT=tcp://10.96.0.1:443
[node-info-deployment-794484ff78-c6dtl node-info-test] HOSTNAME=node-info-deployment-794484ff78-c6dtl
[node-info-deployment-794484ff78-c6dtl node-info-test] HOME=/root
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_SERVICE_HOST=10.101.180.84
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
[node-info-deployment-794484ff78-c6dtl node-info-test] PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_SERVICE_PORT=2878
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_PORT=tcp://10.101.180.84:2878
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_PORT_443_TCP_PORT=443
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_PORT_443_TCP_PROTO=tcp
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_PORT_2878_TCP_ADDR=10.101.180.84
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_PORT_2878_TCP_PORT=2878
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_PORT_2878_TCP_PROTO=tcp
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_SERVICE_PORT_HTTPS=443
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
[node-info-deployment-794484ff78-c6dtl node-info-test] KUBERNETES_SERVICE_HOST=10.96.0.1
[node-info-deployment-794484ff78-c6dtl node-info-test] PWD=/
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_PORT_2878_TCP=tcp://10.101.180.84:2878
[node-info-deployment-794484ff78-c6dtl node-info-test] WAVEFRONT_PROXY_SERVICE_PORT_WAVEFRONT=2878
[node-info-deployment-794484ff78-c6dtl node-info-test] ++++++
[node-info-deployment-794484ff78-c6dtl node-info-test] { "kind": "Pod", "apiVersion": "v1", "metadata": { "name": "node-info-deployment-794484ff78-c6dtl", "generateName": "node-info-deployment-794484ff78-", "namespace": "default", "selfLink": "/api/v1/namespaces/default/pods/node-info-deployment-794484ff78-c6dtl", "uid": "adcd53c2-22a5-4a0d-a82c-6cb3d106bfcd", "resourceVersion": "57705", "creationTimestamp": "2020-04-17T13:48:06Z", "labels": { "app": "node-info", "app.kubernetes.io/managed-by": "skaffold-v1.7.0", "pod-template-hash": "794484ff78", "skaffold.dev/builder": "local", "skaffold.dev/cleanup": "true", "skaffold.dev/deployer": "kubectl", "skaffold.dev/docker-api-version": "1.40", "skaffold.dev/run-id": "bf9b82db-e4df-4f47-8b29-b7d59eea09bb", "skaffold.dev/tag-policy": "git-commit", "skaffold.dev/tail": "true" }, "ownerReferences": [ { "apiVersion": "apps/v1", "kind": "ReplicaSet", "name": "node-info-deployment-794484ff78", "uid": "24f91373-9742-45a6-9ba6-ca47390840df", "controller": true, "blockOwnerDeletion": true } ] }, "spec": { "volumes": [ { "name": "default-token-cvpbn", "secret": { "secretName": "default-token-cvpbn", "defaultMode": 420 } } ], "containers": [ { "name": "node-info-test", "image": "node-info-test:719243008aee5b2a2ee285e48abce2390bca26c9a6f81e2523f10ed1bc69ee8d", "resources": { }, "volumeMounts": [ { "name": "default-token-cvpbn", "readOnly": true, "mountPath": "/var/run/secrets/kubernetes.io/serviceaccount" } ], "terminationMessagePath": "/dev/termination-log", "terminationMessagePolicy": "File", "imagePullPolicy": "IfNotPresent" } ], "restartPolicy": "Always", "terminationGracePeriodSeconds": 30, "dnsPolicy": "ClusterFirst", "serviceAccountName": "default", "serviceAccount": "default", "nodeName": "docker-desktop", "securityContext": { }, "schedulerName": "default-scheduler", "tolerations": [ { "key": "node.kubernetes.io/not-ready", "operator": "Exists", "effect": "NoExecute", "tolerationSeconds": 300 }, { "key": "node.kubernetes.io/unreachable", "operator": "Exists", "effect": "NoExecute", "tolerationSeconds": 300 } ], "priority": 0, "enableServiceLinks": true }, "status": { "phase": "Running", "conditions": [ { "type": "Initialized", "status": "True", "lastProbeTime": null, "lastTransitionTime": "2020-04-17T13:48:06Z" }, { "type": "Ready", "status": "True", "lastProbeTime": null, "lastTransitionTime": "2020-04-17T13:48:07Z" }, { "type": "ContainersReady", "status": "True", "lastProbeTime": null, "lastTransitionTime": "2020-04-17T13:48:07Z" }, { "type": "PodScheduled", "status": "True", "lastProbeTime": null, "lastTransitionTime": "2020-04-17T13:48:06Z" } ], "hostIP": "192.168.65.3", "podIP": "10.1.2.180", "startTime": "2020-04-17T13:48:06Z", "containerStatuses": [ { "name": "node-info-test", "state": { "running": { "startedAt": "2020-04-17T13:48:07Z" } }, "lastState": { }, "ready": true, "restartCount": 0, "image": "node-info-test:719243008aee5b2a2ee285e48abce2390bca26c9a6f81e2523f10ed1bc69ee8d", "imageID": "docker://sha256:719243008aee5b2a2ee285e48abce2390bca26c9a6f81e2523f10ed1bc69ee8d", "containerID": "docker://6c063d683e95b911a0884565d0e2a0e541233c44c214d3b70753ec2aca5dcbfa" } ], "qosClass": "BestEffort" } }
[node-info-deployment-794484ff78-c6dtl node-info-test] ++++++
[node-info-deployment-794484ff78-c6dtl node-info-test] API url = https://10.96.0.1:443
[node-info-deployment-794484ff78-c6dtl node-info-test] HostName = node-info-deployment-794484ff78-c6dtl
[node-info-deployment-794484ff78-c6dtl node-info-test] Pod name = "node-info-deployment-794484ff78-c6dtl"
[node-info-deployment-794484ff78-c6dtl node-info-test] Pod namespace = "default"
[node-info-deployment-794484ff78-c6dtl node-info-test] Pod labels = { "app": "node-info", "app.kubernetes.io/managed-by": "skaffold-v1.7.0", "pod-template-hash": "794484ff78", "skaffold.dev/builder": "local", "skaffold.dev/cleanup": "true", "skaffold.dev/deployer": "kubectl", "skaffold.dev/docker-api-version": "1.40", "skaffold.dev/run-id": "bf9b82db-e4df-4f47-8b29-b7d59eea09bb", "skaffold.dev/tag-policy": "git-commit", "skaffold.dev/tail": "true" }
```
