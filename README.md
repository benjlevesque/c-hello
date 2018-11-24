# C-Hello

> "hello-world" program written in `C`, built with `Docker`.

## Requirements

`Docker`. That's it, no need to have `GCC` installed.

(oh, and `git`... but I hope you're not browsing Github without `git` installed on your machine?!)

## Getting started

Run the following in a console:

```
git clone https://github.com/benjlevesque/c-hello
cd c-hello
docker build -t c-hello .
docker run --rm --name my-running-app c-hello
```

Explanations:

- Line 1: "clone" (download) the repository to your local machine
- Line 2: change the current directory to the downloaded project
- Line 3: use docker to build the docker image, as described in the `Dockerfile` file (the name is standard, the "." says it's in the current directory), and give it the name "c-hello"
- Line 4: run the newly built image in a new container with the name "my-running-app". `--rm` will remove the container once the program is finished, otherwise you would have to clean it manually.
