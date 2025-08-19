FROM python:3.11-slim

WORKDIR /action
COPY entrypoint.py /action/entrypoint.py
RUN pip install requests lunarcalendar

ENTRYPOINT ["python", "/action/entrypoint.py"]
