# Database-Travel-Scripts
The Travel simple site use MySQL as database.
Here the script to create and insert example data inside a empty DB.

The applications are already configured for MySQL DB

## Build database container (ephemeral)
In order to build database container (mySQL) prepare the init script configmap:

```shell script
oc create configmap mysql-db-script --from-file=mysql-db-script.sql
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
