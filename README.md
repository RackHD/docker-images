# docker-images

The intent of this repo is to provide a place to manage a set of Dockerfiles for base images 
and/or images which are not tied directly to applications that we're producing from other
repositories.

To add a new image simply create a sub-directory under the root of the project with your image
base name.  Then add a Dockerfile with the specifics for the image and optionally a Makefile for
building that image.
