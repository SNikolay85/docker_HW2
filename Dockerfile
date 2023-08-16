FROM python:3.10

WORKDIR /docker2

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . .

EXPOSE 80

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:80
