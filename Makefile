build:
	docker build -t ghcr.io/aneeshkp/goproject:latest -f .Dockerfile .

push:
	docker push ghcr.io/aneeshkp/goproject:latest 