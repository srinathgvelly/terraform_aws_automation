FROM jenkins/jenkins:2.277

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt ./
COPY jenkins.yaml ./
EXPOSE 8080
RUN make /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

