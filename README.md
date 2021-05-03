# Database-Travel-Scripts
The Travel simple site use MySQL as database.
Here the script to create and insert example data inside a empty DB.

The applications are already configured for MySQL DB

## Build database container (ephemeral)
In order to build database container (mySQL) prepare the init script configmap:

```shell script
oc create configmap mysql-db-script.sql --from-file=mysql-db-script.sql
```
Now on your Openshift project you will have a new ConfigMap usable on build.

Create the stream where put the build result:

```shell script
oc create is travelsite-mysql-db
```
This need for the BuildConfig.spec.output

Create BuildConfig using:

```shell script
oc create -f ./build-config-openshift.yml
```

Start build on Openshift:

```shell script
oc start-build travelsite-mysql-db
```

##Deploy container
For run the builded image stream run:

```shell script
oc new-app travelsite-mysql-db --name=travelsite-db
```

Expose in a route the service with:

```shell script
oc expose service/travelsite-db
```

##Access
You can access to container using browser console and navigate to pod Terminal.

Of you want use local client, you need to port forward the pod using:

```shell script
oc port-forward #pod_name# :3306
```

for example: oc port-forward travelsite-db-6f8bf4b766-9rt6v :3306
This will create a new port _(i.e. 56218)_ that you can use for access to pod

Output example:

```
$ oc port-forward travelsite-db-6f8bf4b766-9rt6v :3306
Forwarding from 127.0.0.1:56218 -> 3306
Forwarding from [::1]:56218 -> 3306
Handling connection for 56218
```

## Building from external registry

###Build image and push

Using _hub.docker.com_, build localy the image using docker client


```shell script
docker build -t travelsite-mysql-db .
```

Login into docker hub (or your registry site, e.g. quay.io)

```shell script
docker login -u username -p Your-app-generared-password
```

Tag image 

```shell script
docker tag travelsite-mysql-db username/travelsite-db
```

Push image

```shell script
docker push username/travelsite-db
```

After login in Openshift via OC cli, create a new app using the docker image

```shell script
oc new-app --as-deployment-config -lapp=database --docker-image username/travelsite-db
```

Your DB is up and running
