build:
	hugo -w server
deploy:
	rm -rf public
	hugo
	rsync -avz public/* do:/var/www/getwt
