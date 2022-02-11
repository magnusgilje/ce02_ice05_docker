FROM python:3.8.12-slim 

RUN pip install flask waitress

COPY ./hello_flask_app /hello_flask_app

WORKDIR /hello_flask_app

CMD ["waitress-serve","--host=0.0.0.0","--port=5050","hello_flask:app"]