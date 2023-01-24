FROM jenkins/jenkins:lts-jdk11
#Cancel the init block
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false 
#Copy list of plugins that i want in my jenkins server
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
#Install them
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
