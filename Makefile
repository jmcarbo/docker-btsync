build:
	docker build -t jmcarbo/btsync .

download:
	mkdir -p ./bin
	curl -o ./bin/btsync.tar.gz http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
