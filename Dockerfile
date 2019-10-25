ARG version=8
FROM tomcat:${version}
LABEL Author="SrinivasReddyMula"
RUN wget https://github.com/QT-DevOps/DevOpsIssues/files/2130588/gameoflife.zip \
    && apt install unzip -y && unzip gameoflife.zip && mv gameoflife.war /usr/local/tomcat/webapps
VOLUME /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]