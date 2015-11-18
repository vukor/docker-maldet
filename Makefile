build:
	docker build -t "vukor/docker-maldet" .

shell:
	docker run -ti --rm "vukor/docker-maldet" /bin/bash

check:
	docker run --volume `pwd`:/htdocs --rm "vukor/docker-maldet" maldet -a /htdocs

help:
	docker run --rm "vukor/docker-maldet" maldet -h

