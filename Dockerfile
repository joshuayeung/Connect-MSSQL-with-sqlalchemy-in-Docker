FROM ubuntu
RUN apt-get update && apt-get install -y curl gnupg2 \
  && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  && curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  && apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17 \
  && apt-get install -y python-pip && apt-get install -y unixodbc unixodbc-dev \
  && pip install sqlalchemy pymssql pyodbc