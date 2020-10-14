# pong.bt

A small command-line pong game implemented using [bpftrace](https://github.com/iovisor/bpftrace).

<image src="https://i.imgur.com/5n8WNIF.gif" width="50%"/>

Inspired by [bpftrace tetris](https://github.com/mmisono/bpftrace-tetris)

### Instructions

Requires bpftrace 0.11.0 or newer.

Clone the repository, configure [bpftrace](https://github.com/iovisor/bpftrace) on your system, and run using:

```
./run.sh
```

If all goes well, you should be able to see the game after waiting few seconds for the code to compile.

You can also customize the width, height, and computer difficulty using positional parameters:

```
./run.sh 41 12 70
```
Here the difficulty is measured as the percentage of times the computer's paddle correctly moves towards the ball. It defaults to 70% (i.e. the computer makes a mistake during 30% of movements), and you should increase this if you want higher difficulty.
