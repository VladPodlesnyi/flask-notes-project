FROM python:3.10-alpine
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000
WORKDIR /flask-notes-project
RUN apk get update
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install --extra-index-url https://alpine-wheels.github.io/index numpy
RUN pip install --extra-index-url https://alpine-wheels.github.io/index Pillow
RUN pip install --extra-index-url https://alpine-wheels.github.io/index cffi
COPY . /flask-notes-project
CMD [ "python3", "main.py" ]