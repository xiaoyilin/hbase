FROM xiaoyilin/jdk8:271
MAINTAINER  xiaoyilin<406735078@qq.com>
ENV HBASE_VERSION=2.2.6
ENV BASE_DIR=/usr/local
ENV HBASE_HOME=${BASE_DIR}/hbase-${HBASE_VERSION}
RUN cd ${BASE_DIR} \ && 
    curl -fSL "http://archive.apache.org/dist/hbase/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz" -o hbase.tar.gz \ && 
    tar xfvz hbase.tar.gz \ && 
	rm -rf hbase.tar.gz
EXPOSE 16010
ENTRYPOINT ${HBASE_HOME}/bin/hbase master start
