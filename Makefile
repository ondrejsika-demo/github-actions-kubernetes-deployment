docker-build:
	docker build . -t ghcr.io/ondrejsika-demo/github-actions-kubernetes-deployment:manual

docker-push:
	docker push ghcr.io/ondrejsika-demo/github-actions-kubernetes-deployment:manual