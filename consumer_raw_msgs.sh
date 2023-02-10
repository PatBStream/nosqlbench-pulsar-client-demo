java -jar bin/nb5.jar run driver=pulsar config=conf/config-raw.properties yaml=conf/msg_recv_raw.yaml \
 threads=1 cycles=500 --console-pattern 'TERSE-ANSI' -vv
