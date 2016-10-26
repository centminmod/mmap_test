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
```