# ACME Health

Dummy application to demonstrate Apigee OAuth integration

## Configuration

| Environment Variable     | Purpose                                       | Example                                         |
| ------------------------ | --------------------------------------------- | ----------------------------------------------- |
| `CLIENT_ID`              | Client App Key                                | `b8WffiMHdLiT5sEehUr6t7rX7PEGXXXX`              |
| `CLIENT_SECRET`          | Client App Secret                             | `X9zDVizlhqaBFXXX`                              |
| `REDIRECT_URI`           | Redirect URI of registered Client Application | `https://acme-health.herokuapp.com/callback`    |
| `OAUTH_SERVER_BASE_PATH` | Base path of Apigee API Proxy handling OAuth  | `https://emea-demo8-test.apigee.net/oauth2/v1/` |
| `APP_NAME`               | Display name for the 'app'                    | `Acme Health Pro`                               |
| `OAUTH_SCOPES`           | Scopes to be requested (space-separated)      | `read write`                                    |

:bulb: Consider using [direnv](https://direnv.net/) during local development.

## Development

### Setup

Pre-requisites: [Poetry](https://python-poetry.org/), [pyenv](https://github.com/pyenv/pyenv)

```
pyenv install 3.8.1
poetry install
```

Configure environment variables (see above).

### Run

```
poetry run uvicorn acme_health.main:app --reload
```

## Heroku Deployment

Update `requirements.txt` file (Heroku doesn't support Poetry workflow):

```
# On master branch
poetry export -f requirements.txt > requirements.txt
git add requirements.txt
git commit -m "Synchronise requirements.txt for Heroku deployment"
git push heroku master
```

Configure required environment variables using `heroku config:set <variable>`
