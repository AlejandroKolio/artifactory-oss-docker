# artifactory-oss-docker

Dockerfiles for the [`alejandrokolio/artifactory-oss`](https://hub.docker.com/u/alejandrokolio/artifactory-oss/)
Docker Hub images which contains Tomcat and Artifactory.

## Feature:

- [Tomcat:9.0.10](https://hub.docker.com/_/tomcat/)
- [Artifactory 6.18.0](https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip)
- A mount point created at `${ARTIFACTORY_HOME}`.

## How-To:
```
docker run -d --name artifactory -p 8081:8080 -v $(pwd)/artifactory:/artifactory alejandrokolio/artifactory-oss:9.0.10-6.18.0
```
