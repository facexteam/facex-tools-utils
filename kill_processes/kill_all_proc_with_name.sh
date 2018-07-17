#!/bin/bash
if [ $# -lt 1 ]; then
    echo 'usage: kill_all_proc_with_name.sh <proceed_name> [<except_pid>]'
    echo 'Please input a process name to kill'
    exit
fi

echo "Kill all process with name contains string: $1"
echo "current ppid: $PPID"
echo "current pid: $$"
echo "current bash (subshell) pid: $BASHPID"

ex_pid=1

if [ $# -gt 1 ]; then
    ex_pid=$2
    echo "But except the one with pid: $2"
fi

## Here awk_cmd must be single-quoted, if double-quoted, $1 will be expanded 
#awk_cmd='{ 
#	print "pid:", $1; 
#
#	if ($1==1)
#	{
#		print "skip"
#	}
#	else
#	else
#	{
#		cmd="kill -9 "$1; 
#		print cmd; 
#		system(cmd);
#	}
#}'

# Here awk_cmd we use double-quoted string to expand $$, $BASHPID,ex_pid. 
# and also '\$1' is used so as not to be be expanded 
awk_cmd="
BEGIN {
	killed_cnt=0
}
{ 
	print \"--->pid:\", \$1; 

	if (\$1==1 || \$1==$PPID || \$1==$$ || \$1==$BASHPID || \$1==$ex_pid)
	{
		print \"skip, will not kill pid=\" \$1
	}
	else
	{
		cmd=\"kill -9 \" \$1; 
		print cmd; 
		system(cmd);
		killed_cnt++
		print \"------------------------------\"
		print killed_cnt \" processes killed!\"
	}
}
"

echo "awk action: ${awk_cmd}" 

# "${awk_cmd}" must be double-quoted, because:
# if single quoted, it will not be expanded;
# if not quoted, '$1' inside it will be expanded before it is send to awk.
ps ax | grep -v -e 'grep' -e 'ps' \
    | grep $1 > kill_list.txt

cat kill_list.txt | awk "${awk_cmd}"
#    | awk '{ print $1; if($1!=$ex_pid){cmd="kill -9 "$1; print cmd; system(cmd);} }'

