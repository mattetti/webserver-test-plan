# Webserver Test Plan

Simple test plan to benchmark a webserver using JMeter.

## How to start the server:

    $ control_tower start config.ru

The server now runs on http://localhost:8080

## Benchmarks

The test plan is JMeter test plan. JMeter is vendored in this repo so you just to have Java installed on your machine.

To open JMeter you can do it manually:

    $ JVM_ARGS="-Xms512m -Xmx512m" jmeter/bin/jmeter -t hello_world.jmx

Or just use the shortcut:

    $ ./gui

## JMeter

If you are not familiar with JMeter here are some pointers:

1. To run the plan, click on Run > Start
Look at the Summary Report to see how many samples were received, the % of errors etc...
Results are available in the View Results Tree section

2. To clear the results, go to Run > Clear All

3. Request default settings are available in the HTTP Request Defaults Section.

4. The amount of threads (simultaneous connections) can be changed in the Thread Group.