# pipenv-image

Alpine 3.9, Python 3.6.9, pip3 and Postgres ready driver/client

Ready to use docker image for **development** purposes.

Image Size: **~443MB**

## Sample

This is a sample `Pipfile` you can use:

```bash

[[source]]
name = "pypi"
url = "https://pypi.org/simple"
verify_ssl = true

[dev-packages]

[packages]
flask = "*"
flask-sqlalchemy = "*"
psycopg2-binary = "*"
pyjwt = "*"
requests = "*"
uuid="*"
pytest = "*"
pytest-mock = "*"

[requires]
python_version = "3.6"


```
