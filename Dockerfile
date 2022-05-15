FROM python:3.9.7-slim

WORKDIR /home
ADD poetry.lock .
ADD pyproject.toml .
ADD credit-card-fraud.ipynb .

RUN python3 -m pip install poetry && \
    poetry config virtualenvs.create false &&  \
    poetry install

ENTRYPOINT ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]
