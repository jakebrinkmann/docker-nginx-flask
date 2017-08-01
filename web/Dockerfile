FROM python:3.6

ENV WEBAPP /usr/src/app
RUN mkdir -pv $WEBAPP
WORKDIR $WEBAPP

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
ENV GUNICORN_CMD_ARGS "--bind=0.0.0.0:4000 --access-logfile=-"

CMD ["gunicorn", "app:app"] 

