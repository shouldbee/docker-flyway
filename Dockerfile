FROM java:7

ADD http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3.zip /flyway.zip

RUN unzip /flyway.zip && rm /flyway.zip && mv /flyway-4.0.3 /flyway && ln -s /flyway/flyway /usr/local/bin/flyway

# A simple testing
RUN flyway 2>&1 | grep "Flyway 4.0.3"

WORKDIR /flyway
ENTRYPOINT ["flyway"]
CMD ["--help"]
