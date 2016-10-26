shared memory mapping test for CentminMod.com LEMP stacks
===

```
curl -sL https://raw.githubusercontent.com/centminmod/mmap_test/master/mmap_test.sh | bash
```

Example output run:

```
checking system shared memory limits for mmap

ulimit -aH
core file size          (blocks, -c) unlimited
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 255841
max locked memory       (kbytes, -l) 64
max memory size         (kbytes, -m) unlimited
open files                      (-n) 262144
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) unlimited
cpu time               (seconds, -t) unlimited
max user processes              (-u) 4096
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited

65536 bytes mmaped
131072 bytes mmaped
262144 bytes mmaped
524288 bytes mmaped
1048576 bytes mmaped
2097152 bytes mmaped
4194304 bytes mmaped
8388608 bytes mmaped
16777216 bytes mmaped
33554432 bytes mmaped
67108864 bytes mmaped
134217728 bytes mmaped
268435456 bytes mmaped
536870912 bytes mmaped

OpenVZ system detected...
Checking /proc/user_beancounters limits for shmpages

shmpages used & percentage used: 29 MB (0%)

Version: 2.5
       uid  resource                     held              maxheld              barrier                limit              failcnt
    38444:  kmemsize                 25246166             26095616             67108864             67108864                    0
            lockedpages                     0                    0                16384                16384                    0
            privvmpages                 20194               283361  9223372036854775807  9223372036854775807                    0
            shmpages                     7426               138498  9223372036854775807  9223372036854775807                    0
            dummy                           0                    0  9223372036854775807  9223372036854775807                    0
            numproc                        38                   63  9223372036854775807  9223372036854775807                    0
            physpages                   21417                32768                    0                32768                    0
            vmguarpages                     0                    0  9223372036854775807  9223372036854775807                    0
            oomguarpages                 6895                10271  9223372036854775807  9223372036854775807                    0
            numtcpsock                     10                   13  9223372036854775807  9223372036854775807                    0
            numflock                        8                   16  9223372036854775807  9223372036854775807                    0
            numpty                          2                    2  9223372036854775807  9223372036854775807                    0
            numsiginfo                      1                   21  9223372036854775807  9223372036854775807                    0
            tcpsndbuf                  181072               242640  9223372036854775807  9223372036854775807                    0
            tcprcvbuf                  163840               212992  9223372036854775807  9223372036854775807                    0
            othersockbuf               138720               214440  9223372036854775807  9223372036854775807                    0
            dgramrcvbuf                     0                 4624  9223372036854775807  9223372036854775807                    0
            numothersock                  108                  128  9223372036854775807  9223372036854775807                    0
            dcachesize               21225812             21284880             33554432             33554432                    0
            numfile                       690                  815  9223372036854775807  9223372036854775807                    0
            dummy                           0                    0  9223372036854775807  9223372036854775807                    0
            dummy                           0                    0  9223372036854775807  9223372036854775807                    0
            dummy                           0                    0  9223372036854775807  9223372036854775807                    0
            numiptent                     627                  627  9223372036854775807  9223372036854775807                    0
```