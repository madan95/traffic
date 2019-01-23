# Docker Traffic

Simple docker network handler using [traefik](https://docs.traefik.io/)

## Getting Started

Once you have the clone of the repo and flow the installing instruction.

### Prerequisites
- Docker
- Docker-compose
- Make

### Installing

- ```cd traffic```
- On the repo directory: ```make start```

## Running the tests

Now you should be able to access traefik network log page. Go to [traffic.localhost](https://traffic.localhost)

## Usage with other project

On other docker project, we can now easily add the services setting in docekr-compose.yml to use our proxy network. Add the following to other project docker-compose.yml file:
```
labels:
  - "traefik.enable=true"
  - "traefik.docker.network=traffic"
  - "traefik.frontend.rule=Host:OURPROJECTSUBDOMAIN.localhost"
  - "traefik.port=80"
networks:
  - traffic
networks:
traffic:
external: true
```

## Built with

- Docker (traefik)

## Versioning

We use [SemVer](https://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/madan95/dockerTemple/tags).


## Author
- Madan Limbu
