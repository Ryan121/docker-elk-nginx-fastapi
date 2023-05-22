FROM python:3.9.0-slim-buster

WORKDIR /usr/src/app

RUN pip install --upgrade pip

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]