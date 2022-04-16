FROM python:latest
RUN mkdir -p /usr/local/app
COPY . /usr/local/app/
WORKDIR /usr/local/app/
RUN pip install -r requirements.txt
CMD ["python","run.py"]