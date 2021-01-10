FROM python:3.8

COPY . /app/
WORKDIR /app/

RUN pip install fastapi uvicorn[standard] ptvsd

CMD python -m ptvsd --host 0.0.0.0 --port 5678 -m uvicorn app.main:app --host 0.0.0.0 --port 8080
