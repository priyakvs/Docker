# Docker
Built a Linux docker image which connects with server using key based login, copy folders for computation from server, run program from local Dockerfile for gathering inforamtion of word documents on the copied folder & of system user, save the result in a file and sent back the output file to the server

The image attached just needs run command after the image is created since Dockerfile has commands to copy and execute from local.

Commands:
Building docker image:
docker build -t [container_name/image_name]

Run and edit Docker image:
docker run -ti --rm [docker_image]

Copying from local to remote:
docker  run  -v `local_path`:`remote_path`
