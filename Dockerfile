FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies devope 
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source devolpe
COPY server.py /app

CMD [ "python", "server.py" ]