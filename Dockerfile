FROM tomcat:9.0.10

# To update, check https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip/view
ARG ARTIFACTORY_VERSION=5.8.2
ARG ARTIFACTORY_URL=https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip
ARG ARTIFACTORY_SHA256=cbb3ae8ba842b9f53122bd568e3dc9a3d8412eb5e720e973d6d188dc55e1fc54

# Disable Tomcat's manager application.
RUN rm -rf $CATALINA_HOME/webapps/*

WORKDIR /tmp
ADD ${ARTIFACTORY_URL} artifactory.zip

RUN echo "${ARTIFACTORY_SHA256}  artifactory.zip" | sha256sum -c - && \
  unzip -j artifactory.zip "artifactory-oss-${ARTIFACTORY_VERSION}/webapps/artifactory.war" -d ${CATALINA_HOME}/webapps && \
  mv ${CATALINA_HOME}/webapps/artifactory.war ${CATALINA_HOME}/webapps/ROOT.war && \
  rm artifactory.zip

ENV ARTIFACTORY_HOME /artifactory
RUN mkdir ${ARTIFACTORY_HOME}
VOLUME ${ARTIFACTORY_HOME}

WORKDIR $CATALINA_HOME
