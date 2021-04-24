# graphql

This repo contains the files necessary to deploy the example application from the following blogpost: [https://graphql.org/graphql-js/running-an-express-graphql-server/](https://graphql.org/graphql-js/running-an-express-graphql-server/)

To build the container 

```
podman build -t graphql:v1 .
```

## Deploying the App

The `deploy` directory contains files used to deploy a prebuilt version of this container into OpenShift.  Use the following commands to deploy into OpenShift

```
$ oc new-project graphql
$ oc create -f deploy/graphql-deployment.yml
$ oc create route edge --service=graphql
$ oc get route
NAME      HOST/PORT                                 PATH   SERVICES   PORT              TERMINATION   WILDCARD
graphql   graphql-graphql.apps.ocp47.xphyrlab.net          graphql    graphql-webport   edge          None
```

Open a web browser and browse to https://graphql-graphql.apps.ocp47.xphyrlab.net/graphql (be sure to update the URL with your own from the oc get route command).  Remember that because this is being deployed with a self signed cert, you will need to accept the connection before it will actually connect and work for you.
