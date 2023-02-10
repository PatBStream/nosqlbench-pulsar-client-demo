java -jar bin/nb5.jar run driver=pulsar config=conf/config-avro.properties yaml=conf/msg_send_avro.yaml \
 threads=1 \
 cycles=10 \
 cyclerate=1 \
 web_url=https://mypulsar.com \
 service_url=pulsar+ssl://mypulsar:6651 \
 --console-pattern 'TERSE-ANSI' -vv

