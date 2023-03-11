### SBCL

image-sbcl-dev:
	docker build -f Dockerfile.sbcl-dev -t ogimart/sbcl-dev .

image-ecl-dev:
	docker build -f Dockerfile.ecl-dev -t ogimart/ecl-dev .

image-sbcl-sly:
	docker build -f Dockerfile.sbcl-sly -t ogimart/sbcl-sly .

image-ecl-sly:
	docker build -f Dockerfile.ecl-sly -t ogimart/ecl-sly .

image-sbcl-app:
	docker build --no-cache -f Dockerfile.sbcl-app -t ogimart/sbcl-app .

image-ecl-app:
	docker build --no-cache -f Dockerfile.ecl-app -t ogimart/ecl-app .

sbcl-app:
	sbcl --non-interactive --load build.lisp

ecl-app:
	ecl --nodebug --load build.lisp

clean:
	rm -rf app
