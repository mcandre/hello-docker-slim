# hello-docker-slim - a slim Docker container that prints Hello World

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/hello-docker-slim/

# EXAMPLE

```
$ docker pull mcandre/docker-yasm
$ make
docker run -it -v $(pwd):/mnt mcandre/docker-yasm sh -c 'cd /mnt/src; make'
docker run mcandre/hello-docker-slim
Hello World!
docker images | grep mcandre/hello-docker-slim | awk '{ print $(NF-1), $NF }'
912 B
```

# ABOUT

hello-docker-slim is a container for printing Hello World, made smaller with a few techniques:

* Identify dependencies with [strace](http://sourceforge.net/projects/strace/).
* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [scratch](https://docs.docker.com/articles/baseimages/#creating-a-simple-base-image-using-scratch).

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [grep](http://www.gnu.org/software/grep/)
* [awk](https://en.wikipedia.org/wiki/AWK)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)

# OTHER LESSONS

See [hello-docker](https://github.com/mcandre/hello-docker) for a basic Docker introduction.

See [docker-sh](https://github.com/mcandre/docker-sh) for how to launch interactive bash sessions into containers for running multiple commands.

See [docker-curl](https://github.com/mcandre/docker-curl) and [docker-java](https://github.com/mcandre/docker-java) for containers as providers of single commands.

See [docker-apache](https://github.com/mcandre/docker-apache) and [docker-postgres](https://github.com/mcandre/docker-postgres) for containers as continuous servers.

See [docker-redis](https://github.com/mcandre/docker-redis) for provisioning containers with Puppet.

See [docker-jetty](https://github.com/mcandre/docker-jetty) for adding custom files to a container.
