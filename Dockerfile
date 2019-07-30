FROM python:3.6-slim
RUN apt-get update && \
    apt-get install libaio1 && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/
COPY include/oracle /usr/include/oracle
COPY lib/oracle /usr/lib/oracle
RUN sh -c "echo /usr/lib/oracle/18.5/client64/lib > /etc/ld.so.conf.d/oracle-instantclient.conf" && \
    ldconfig
RUN pip install cx-oracle
