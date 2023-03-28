# docker-poetry

This project provides you a working Python Poetry-based environment using Docker and Docker Compose.

## Usage

1. Install [Docker](https://docs.docker.com/engine/installation/) and [Docker-compose](https://docs.docker.com/compose/install/);

2. Clone this project and then cd to the project folder;

3. Build the image:
```sh
$ docker compose build
```

4. Run the project:
```sh
$ docker compose up
```

## Other

You can use **poetry** locally with in-project *virtualenvs* as it specified in `poetry.toml`:
```sh
$ poetry run main
```

In that case you can also use the *black* code formatter:
```sh
$ poetry run black ./docker_poetry
```

## License

This project is licensed under the [MIT License](LICENSE).

## Credits

My thanks to the developers of the [Docker](https://www.docker.com/company) and [Poetry](https://python-poetry.org/).
