bucket=$1
file_filter=$2

if [ $# -gt 2 ]; then
	for file in `ls $file_filter`
	do
		/disk2/qrsctl put -c $bucket $3$file $file
	done
else
	for file in `ls $file_filter`
	do
		/disk2/qrsctl put -c $bucket $file $file
	done
fi