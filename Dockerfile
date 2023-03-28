FROM python:3.11

SHELL ["/bin/bash", "-c"]
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PATH="${PATH}:/root/.local/bin"

# install poetry
RUN apt-get update && apt-get install --no-install-recommends -y curl && \
    curl -sSL https://install.python-poetry.org | python3 -

COPY pyproject.toml poetry.lock ./

# skip venv creation and install globally
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi --no-root

COPY . .
ENTRYPOINT [ "poetry", "run", "main" ]
