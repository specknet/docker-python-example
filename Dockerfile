FROM python:3.11
ADD hello.py /app/hello.py
CMD ["python", "/app/hello.py"]
