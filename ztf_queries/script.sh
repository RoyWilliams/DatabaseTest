export username=$1
export password=$2
time mysql -u $username --password=$password ztf -h lasair-dev-db -Be "source query04.sql;" > out04.txt 2>&1
time mysql -u $username --password=$password ztf -h lasair-dev-db -Be "source query07.sql;" > out07.txt 2>&1
time mysql -u $username --password=$password ztf -h lasair-dev-db -Be "source query13.sql;" > out13.txt 2>&1
time mysql -u $username --password=$password ztf -h lasair-dev-db -Be "source query16.sql;" > out16.txt 2>&1
time mysql -u $username --password=$password ztf -h lasair-dev-db -Be "source query17.sql;" > out17.txt 2>&1
