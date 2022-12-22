n=50

start-server:
	docker run -it --rm -p 127.0.0.1:5005:5005  -p 127.0.0.1:8080:8080 --env-file local.env whylabs/whylogs

load-test:
	hey -z 10s -c 4 -H  'X-API-Key: password' -m POST -D json/data-$(n).json -T 'application/json' 'http://localhost:8080/logs'

load-test-10: n=10
load-test-10: load-test

load-test-50: n=50
load-test-50: load-test

load-test-500: n=500
load-test-500: load-test

