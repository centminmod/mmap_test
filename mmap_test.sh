#!/bin/bash
######################################################
# written by George Liu (eva2000) centminmod.com
# for mmap memory limit testing on LEMP stacks
######################################################
# variables
#############
DT=`date +"%d%m%y-%H%M%S"`
MMAP_TESTFILE='https://raw.githubusercontent.com/centminmod/mmap_test/master/mmap_test.c'
MMAP_TESTSCRIPT='https://raw.githubusercontent.com/centminmod/mmap_test/master/mmap_test.sh'
######################################################
# functions
#############
get() {
  if [ ! -d /root/tools/mmaptest ]; then
    mkdir -p /root/tools/mmaptest
  fi
  if [ -d /root/tools/mmaptest ]; then
    cd /root/tools/mmaptest
    rm -rf mmap_test.c
    wget -O mmap_test.c $MMAP_TESTFILE >/dev/null 2>&1
    gcc -o mmap_test mmap_test.c
  fi
}

run() {
  echo
  echo "checking system shared memory limits for mmap"
  echo
  echo "ulimit -aH"
  ulimit -aH
  echo
  if [[ -f /root/tools/mmaptest/mmap_test.sh || ! -f /root/tools/mmaptest/mmap_test.sh ]]; then
    rm -rf /root/tools/mmaptest/mmap_test.sh
    wget -O /root/tools/mmaptest/mmap_test.sh $MMAP_TESTSCRIPT >/dev/null 2>&1
  fi
  if [ -f /root/tools/mmaptest/mmap_test ]; then
    /root/tools/mmaptest/mmap_test
  fi
  openvz_checks
}

openvz_checks() {
  if [ -f /proc/user_beancounters ]; then
    echo
    echo "OpenVZ system detected..."
    echo "Checking /proc/user_beancounters limits for shmpages"
    beans=$(cat /proc/user_beancounters | grep shmpages)
    max=$(echo $beans | awk '{ print $4;}')
    use=$(echo $beans | awk '{ print $2;}')
    let "per=$use*100/$max"
    let "mb=$use/256"
    echo
    echo "shmpages used & percentage used: $mb MB ($per%)"
  fi
}

######################################################
get
run
exit