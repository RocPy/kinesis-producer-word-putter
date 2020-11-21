FROM python:3.8

# Update packages
RUN apt-get update -y && \
    pip install --upgrade pip && \
    pip install pipenv

COPY Pipfile* /app/
WORKDIR /app

# Install application dependencies
RUN pipenv lock --requirements > requirements.txt && \
    pip install -r requirements.txt

# Elastic Beanstalk requires at least one open port
EXPOSE 80

# Copy the app into the container
COPY . /app
WORKDIR /app

# Ensure the entry point is executable 
RUN chmod +x ./run-wordputter.sh

CMD ["/app/run-wordputter.sh"]