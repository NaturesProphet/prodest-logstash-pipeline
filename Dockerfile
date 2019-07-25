FROM registry.es.gov.br/espm/infraestrutura/containers/logstash:6.5.4
WORKDIR /usr/share/logstash/
RUN bin/logstash-plugin install logstash-output-jdbc
RUN bin/logstash-plugin install logstash-output-mongodb
ADD mssql-jdbc-7.0.0.jre8.jar /usr/share/logstash/
USER logstash
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
RUN touch /usr/share/logstash/config/logstash.yml
ADD pipeline/ /usr/share/logstash/pipeline/