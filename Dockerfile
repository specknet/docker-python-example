FROM python:3
ADD hello.py /app/hello.py
RUN pip install --no-cache-dir pandas
CMD ["python", "/app/hello.py"]
