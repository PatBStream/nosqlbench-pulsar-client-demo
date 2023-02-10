# NoSQLBench Demo using Pulsar Client
Demo of NB-based Pulsar Client showing options for AVRO, Message size, and Message generation 

# Overview
This repo contains NB5-based configuration files, scripts, and example of using the native Pulsar Client built into NB5.  NB5 Pulsar Client can produce and consume to a Pulsar Cluster, and generate various message sizes, use a schema like AVRO or native Pulsar bytes[] (raw) data.  NB5 allows for various workloads to be defined by config files, like # of connections, # of sessions, run time cycles, etc.

This demo shows you how to use NB5 to create and drive messaging workloads of all types to your Pulsar Cluster.

# Requirements
This demo requires and assumes access to a running Pulsar Cluster.  The Cluster can be locally or remote.  It can also be Pulsar Standalone.  For real messaging workloads, a live Pulsar Cluster is recommended.

# General Setup 

* Download the NB5 jar file (latest version if possible) and move it to the /bin directory of this repo.
* Setup Pulsar Cluster items:  namespace, topics, and subscriptions
* Review and update NB5 config files as needed:
  * *.yaml files
  * config-avro.properties and/or config-raw.properites
* Run the scripts for producer and/or consumer as needed.

# Create NB5 Scenario (Workloads)

NB5 uses a set of config files to describe and run a Pulsar messaging workload.  For this demo, those files are in the ../conf directory.  Update these files are needed for your workloads.

```
conf
├── avro/
│   ├── ...
│   └── ...
├── config-avro.properties
├── config-raw.properties
├── msg_recv_avro.yaml
├── msg_recv_raw.yaml
├── msg_send_avro.yaml
├── msg_send_keyvalue_raw.yaml
├── msg_send_raw.yaml
```
## Config Properties file
Update the **config-arvo.properties** and/or **config-raw.properties** files as needed.  For example, to configure the AVRO schema, update config-avro.properties file with the path to the schema templates.  

Also, update any **client**, **producer.** and **consumer.** parameters as needed.  See the file contents for examples and further description.

# Run the NB5 Scenario Workload

To run the workload test, execute the BASH scripts for the Producers and/or Consumers.
```
$prompt> ./producer_avro_msgs.sh
     361 DEBUG i.n.e.c.l.LoggerConfig [main] SCENARIO     Not purging old files, since maxLogFiles is 0.
     364 INFO  i.n.e.c.NBCLI [main] NBCLI        Configured scenario log at logs/scenario_20230210_082952_574.
log
     365 DEBUG i.n.e.c.NBCLI [main] NBCLI        Scenario log started
     366 INFO  i.n.e.c.NBCLI [main] NBCLI        Running NoSQLBench Version 5.17.1-release
     367 INFO  i.n.e.c.NBCLI [main] NBCLI        command-line: run driver=pulsar config=conf/config-avro.prope
```
# Checking Results 

Use the NB5 logfiles to verify runtime options and results.  
```
$prompt> ls -la logs
drwxr-xr-x 2 id id  4096 Feb 10 08:29 ./
drwxr-xr-x 5 id id  4096 Feb 10 08:29 ../
-rw-r--r-- 1 id id   379 Feb 10 08:29 scenario_20230210_082952_574.js
-rw-r--r-- 1 id id 76570 Feb 10 08:29 scenario_20230210_082952_574.log
-rw-r--r-- 1 id id  5783 Feb 10 08:29 scenario_20230210_082952_574.summary
```
# Reference Links and Info
NB5 release site: https://github.com/nosqlbench/nosqlbench/releases/tag/5.17.1-release
https://github.com/nosqlbench/nosqlbench/releases

NB5 General information and Getting Started:  https://docs.nosqlbench.io/getting-started/
NB5 Pulsar Client information: https://github.com/nosqlbench/nosqlbench/blob/main/adapter-pulsar/src/main/resources/pulsar.md


Placeholder NB5 Data Generation options - https://docs.nosqlbench.io/bindings/funcref-general/

**Pulsar Shell commands** 
admin topics stats persistent://tnt0/ns0/tp1
admin topics peek-messages persistent://tnt0/ns0/tp1 -n 1 -s mynbsub