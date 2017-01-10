TAG = latest
JPEGOPTIM_IMAGE = instant-image-optimizer-jpegoptim

build:
	docker build --no-cache -f jpegoptim/Dockerfile -t ${JPEGOPTIM_IMAGE}:${TAG} jpegoptim
