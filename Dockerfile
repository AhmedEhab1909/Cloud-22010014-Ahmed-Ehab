FROM python:3.9

WORKDIR /app

RUN pip install nltk

COPY stopwords_punctuation /app


RUN python -m nltk.downloader stopwords

CMD ["python", "stopwords_punctuation.py"]