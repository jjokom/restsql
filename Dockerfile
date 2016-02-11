

FROM ubuntu:14.04



RUN apt-get -y update



# For python script
# Install python
RUN apt-get -y install python
# Download pip
RUN apt-get -y install python-pip

RUN pip install flask-restful
RUN apt-get -y install libmysqlclient-dev python-dev
RUN apt-get install python-mysqldb
RUN pip install flask-mysql

# Expose port
EXPOSE 5000

# Bundle app source
COPY . /src

CMD ["python", "/src/api.py"]

