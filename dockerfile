FROM jupyter/all-spark-notebook

# Install Hadoop
USER root
RUN apt-get update && apt-get install -y hadoop && \
    mkdir -p /usr/local/hadoop && \
    chown -R jovyan:users /usr/local/hadoop

# Switch back to user "jovyan"
USER jovyan
ENV HADOOP_HOME=/usr/local/hadoop
ENV PATH=$HADOOP_HOME/bin:$PATH
