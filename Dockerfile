# use an alpine version for image size optimization
FROM frolvlad/alpine-gcc:latest
# copy all local files to the Docker container, at location /usr/src/app in the container
COPY . /usr/src/app
# make this the working directory
WORKDIR /usr/src/app
# compile. If you need a Makefile, you would need to install make before this line.
RUN gcc -o hello main.c -I.
# when ran, exec the compiled program
CMD ["./hello"]