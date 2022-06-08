# docker_scripts

This repo contains the Dockerfiles for the images hosted on [my dockerhub](https://hub.docker.com/u/iancolwell).

They are organized like this:

- docker_repository_name/
	- tag_name/
		- Dockerfile

Use the build and push scripts with the repo and tag names as arguments:

```
build_image.bash ubuntu jammy_user
push_image.bash ubuntu jammy_user
```
