.PHONY: build
build: 
	docker build --rm --tag=mluck/luckeneder-website .

.PHONY: dev
dev: 
	docker run --rm -p 5000:5000 mluck/luckeneder-website