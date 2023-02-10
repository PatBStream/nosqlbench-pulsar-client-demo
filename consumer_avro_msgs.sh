#java -jar bin/nb5.jar run driver=pulsar config=conf/config-avro.properties yaml=conf/msg_recv_avro.yaml threads=1 cycles=50 web_url=https://pulsar-gcp-uscentral1.api.streaming.datastax.com service_url=pulsar+ssl://pulsar-gcp-uscentral1.streaming.datastax.com:6651 --console-pattern 'TERSE-ANSI' -vv --docker-metrics
###  NOTE - Must NOT have a SPACE after the "\" character for BASH to properly run the script.
java -jar bin/nb5.jar run driver=pulsar config=conf/config-avro.properties yaml=conf/msg_recv_avro.yaml \
threads=1 \
alias=nb_activity \
cycles=500M \
web_url=https://mypulsar.com \
service_url=pulsar+ssl://my:6651 \
--console-pattern 'TERSE-ANSI' -vv  \
waitmillis 180000 \
forceStop nb_activity
