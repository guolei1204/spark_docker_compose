FROM openjdk:8-jre
# SPARK
ARG SPARK_ARCHIVE=https://mirror.tuna.tsinghua.edu.cn/apache/spark/spark-2.1.0/spark-2.1.0-bin-hadoop2.7.tgz
ENV SPARK_HOME /usr/local/spark-2.1.0-bin-hadoop2.7

ENV PATH $PATH:${SPARK_HOME}/bin
RUN curl -s ${SPARK_ARCHIVE} | tar -xz -C /usr/local/

WORKDIR $SPARK_HOME
