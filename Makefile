build:
	docker build -t zopyx/print-css-converters .

build-clean:
	docker build --no-cache -t zopyx/print-css-converters .
