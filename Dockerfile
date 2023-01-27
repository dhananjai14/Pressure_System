FROM python:3.8
USER root
RUN mkdir "/app"
COPY . /app/
WORKDIR /app/
RUN pip3 install -r requirements.txt
ENV AIRFLOW_HOME='/app/airflow'
ENV AIRFLOW__CORE__DAGBAD__IMPORT__TIMEOUT=1000
ENV AIRFLOE__CORE__ENABLE__XCOM__PICKLING=True
RUN airflow db init
RUN airflow users create  -e avnish@ineuron.ai -f Avnish -l Yadav -p admin -r Admin  -u admin
RUN chmod 777 start.sh
RUN apt update -y && apt install awscli -y
ENTRYPOINT ["/bin/sh"]
CMD ["start.sh"]
