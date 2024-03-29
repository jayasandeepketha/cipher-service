FROM python:3.11.8-alpine
WORKDIR /home/application
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./ciphers_project ciphers_project/
COPY .entrypoint.sh .
ENTRYPOINT ["/home/application/.entrypoint.sh"]

