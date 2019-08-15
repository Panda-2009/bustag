PYTHON3=python3

javbus:
	$(PYTHON3) -m bustag.spider.bus_spider https://www.cdnbus.bid

recommend:
	$(PYTHON3) -m bustag.model.classifier

build:
	docker build -t  bustag-app-dev .
	
run:
	docker run --rm -d -p 8080:8080 bustag-app-dev 