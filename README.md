# hello-docker-slim - a slim Docker container that prints Hello World

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/hello-docker-slim/

# EXAMPLE

```
$ docker pull mcandre/docker-yasm
$ docker run -it -v $(pwd):/mnt mcandre/docker-yasm bash
root@b2b639fe64c0:/# cd /mnt
root@b2b639fe64c0:/mnt# cd src/
root@b2b639fe64c0:/mnt/src# make
root@b2b639fe64c0:/mnt/src# exit
$ make
docker run mcandre/hello-docker-slim
Hello World!
docker images | grep hello-docker-slim | awk '{ print $(NF-1), $NF }'
829.3 kB
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
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```

# OTHER LESSONS

See [hello-docker](https://github.com/mcandre/hello-docker) for a basic Docker introduction.

See [docker-sh](https://github.com/mcandre/docker-sh) for how to launch interactive bash sessions into containers for running multiple commands.

See [docker-curl](https://github.com/mcandre/docker-curl) and [docker-java](https://github.com/mcandre/docker-java) for containers as providers of single commands.

See [docker-apache](https://github.com/mcandre/docker-apache) and [docker-postgres](https://github.com/mcandre/docker-postgres) for containers as continuous servers.

See [docker-redis](https://github.com/mcandre/docker-redis) for provisioning containers with Puppet.

See [docker-jetty](https://github.com/mcandre/docker-jetty) for adding custom files to a container.
