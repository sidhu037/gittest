while [1];
do
echo
echo "checking for run-away process"
CPU-USAGE=$(uptime|cut -d","-f4|cut -d"."-f2|cut -d" "-f2|sed -e"s^.//g")
if [$CPU-USAGE-gt $CPU-USAGE_THRESHOLD];then
   kill -9 $(ps -e0 pid|sort -kl -r |grep -v PID|head -n1)
   kill -9 $(ps -e0 pid|sort -k1 -r|grep -v %cpu|head -n1)
   kill -9 $TOPPROCESS
   echo System Overloading!
   echo Top-must process killed:$TOPPROCESS
      echo CPU USAGE is at:$CPU_LOAD
  else
  fi
  exit 0
  sleep 1;
done
