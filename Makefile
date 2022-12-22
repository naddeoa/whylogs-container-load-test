


start-server:
	docker run -it --rm -p 127.0.0.1:5005:5005  -p 127.0.0.1:8080:8080 --env-file local.env whylabs/whylogs
