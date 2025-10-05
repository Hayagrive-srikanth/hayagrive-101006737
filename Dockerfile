FROM gcr.io/google-appengine/python
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt || true
CMD ["python3", "-m", "http.server", "8080"]
