FROM java:7

ADD http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.2.1/flyway-commandline-3.2.1.zip /flyway.zip

RUN unzip /flyway.zip && rm /flyway.zip && mv /flyway-3.2.1 /flyway && ln -s /flyway/flyway /usr/local/bin/flyway

# A simple testing
RUN flyway 2>&1 | grep "Flyway 3.2.1"

WORKDIR /flyway
ENTRYPOINT ["flyway"]
CMD ["--help"]
