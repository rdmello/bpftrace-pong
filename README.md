# pong.bt

A small command-line pong game that is implemented using bpftrace.

<image src="https://i.imgur.com/G1hjyYO.png"/>

Inspired by [bpftrace tetris](https://github.com/mmisono/bpftrace-tetris)

### Instructions

(Note: this needs a fairly recent version of bpftrace to run successfully)

Clone the repository, configure [bpftrace](https://github.com/iovisor/bpftrace) on your system, and run using:

```
./run.sh
```

If all goes well, you should be able to see the game after waiting few seconds for the code to compile.

Use j/k to move up/down and ctrl+c to quit.
