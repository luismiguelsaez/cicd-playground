FROM jenkins/jenkins:lts-alpine-jdk11

ARG TZ='Europe/Madrid'

WORKDIR /var/jenkins_home

ADD plugins.txt .
RUN jenkins-plugin-cli --plugins $(cat plugins.txt)

ENV JAVA_OPTS "-Djava.awt.headless=true -Xmx1024m -Djenkins.install.runSetupWizard=false -Dcom.sun.jndi.ldap.connect.pool.protocol=DIGEST-MD5 -Dorg.apache.commons.jelly.tags.fmt.timeZone=${TZ}"