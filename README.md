# docker-flyway

Flyway is database migration tool.
This is a docker image that eases setup.

## About Flyway

> Flyway is an open-source database migration tool. It strongly favors simplicity and convention over configuration.

From: [Documentation - Flyway • Database Migrations Made Easy.](http://flywaydb.org/documentation/)

## Install

This docker image is available as an automated build on [the docker registry hub](https://registry.hub.docker.com/u/shouldbee/flyway/), so using it is as simple as running:


```console
$ docker run shouldbee/flyway
```

To further ease running, it's recommended to set up a much shorter function so that you can easily execute it as just `flyway`:

```
$ flyway () {
  sudo docker run -it --rm --net host -v `pwd`:/flyway/sql shouldbee/flyway $@
}
```

This will create a temporary function. In order to make it persist reboots, you can append this exact line to your `~/.bashrc` (or similar) like this:

```console
$ declare -f flyway >> ~/.bashrc
```

## Usage

Go to the directory which has migration SQL files.

```console
$ cd src/main/resources/db/migration
```

Then run `flyway` command.

```console
$ flyway -url=jdbc:mysql://127.0.0.1/mydb -user=root -password=mypass migrate
```
