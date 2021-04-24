# graphql

This repo contains the files necessary to deploy the example application from the following blogpost: [https://graphql.org/graphql-js/running-an-express-graphql-server/](https://graphql.org/graphql-js/running-an-express-graphql-server/)

To build the container 

```
podman build -t graphql:v1 .
```

The `deploy` directory contains files used to deploy a prebuilt version of this container into OpenShift.  Use the following commands to deploy into OpenShift

```
oc new-project graphql
oc create -f deploy/graphql-deployment.yml
