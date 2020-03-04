CPU_USAGE=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
CPU_USAGE_THRESHOLD=10
PROCESS=$(ps aux r)
TOPPROCESS=$(ps -eo pid -eo pcpu -eo command | sort -k 2 -r | grep -v PID | head -n 1 | awk '{print $1}')
if [ $CPU_USAGE -gt $CPU_USAGE_THRESHOLD ] ; then
  killall -9 $(ps -eo pid | sort -k 1 -r | grep -v PID | head -n 1) #original
  killall -9 $(ps -eo pcpu | sort -k 1 -r | grep -v %CPU | head -n 1)
  killall -9 $TOPPROCESS
  echo system overloading!
  echo Top-most process killed $TOPPROCESS
else
  exit 0
fi
