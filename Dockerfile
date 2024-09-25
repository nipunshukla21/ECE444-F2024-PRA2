FROM python:3.10

COPY . /hello
WORKDIR /hello

RUN python -m pip install -r requirements.txt
ENV FLASK_APP=hello.py
ENV FLASK_DEBUG=1

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
