export username=$1
export password=$2
mysql -u $username --password=$password ztf -h lasair-dev-db -Be "RESET QUERY CACHE; "
