build:
	docker build -t jmcarbo/btsync .

download:
	mkdir -p ./bin
	curl -o ./bin/sync.tar.gz https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz
