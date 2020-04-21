build:
	docker build -t dmoro92/ubuntu-vnc-xfc -f Dockerfile.ubuntu.xfce.vnc .

run:
	docker run --name ubnt-vnc \
	-d -p 5901:5901 -p 6901:6901 --rm \
	dmoro92/ubuntu-vnc-xfc

stop:
	docker stop -t0 ubnt-vnc

push:
	docker push dmoro92/ubuntu-vnc-xfc