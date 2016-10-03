# artifactory-oss-docker

Dockerfiles for the [`jaysong/artifactory-oss`](https://hub.docker.com/r/jaysong/artifactory-oss/)
Docker Hub images which contains Tomcat and Artifactory.

## Feature:

- [Tomcat:9.0](https://hub.docker.com/_/tomcat/)
- [Artifactory 4.13.0](https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip)
- Mount points created at `${ARTIFACTORY_HOME}/backup`, `${ARTIFACTORY_HOME}/data` and
`${ARTIFACTORY_HOME}/logs`.

## How-To:
```
docker run -d --name artifactory -p 8081:8080 -v $(pwd)/artifactory/backup:/artifactory/backup $(pwd)/artifactory/data:/artifactory/data $(pwd)/artifactory/logs:/artifactory/logs jaysong/artifactory-oss:9.0-4.13.0
```
