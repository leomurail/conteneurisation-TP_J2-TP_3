.PHONY: start build deploy status test clean get-url

start:
	minikube start

build:
	eval $$(minikube docker-env) && \
	docker build -t user-service:latest ../TP_2/service-user && \
	docker build -t order-service:latest ../TP_2/service-order

deploy:
	kubectl apply -f Deployment.yaml --validate=false
	kubectl apply -f Service.yaml --validate=false

status:
	kubectl get pods
	kubectl get services

get-url:
	minikube service service-order --url

clean:
	kubectl delete -f Service.yaml --ignore-not-found
	kubectl delete -f Deployment.yaml --ignore-not-found
