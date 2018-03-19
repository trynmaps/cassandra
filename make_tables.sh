set -e

cassandra -f

echo "Waiting for server to start"
#./wait-for-it.sh -t 240 localhost:9042

echo "Installing CQL Scripts"
cql_scripts=$( find . -name "*.cql")
for name in $cql_scripts
do
        echo $name
	cqlsh $name
	#echo $name
done
