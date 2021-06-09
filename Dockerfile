FROM elasticsearch:7.13.1
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum update && \
    yum install -y \
        python38 \
        python38-libs \
        python38-devel \
        python38-pip \
        git && \
    yum clean all
WORKDIR /usr/share/elasticsearch/
RUN git clone https://github.com/max-lindquist/text-embeddings.git && \
    python3.8 -m pip install -r /usr/share/elasticsearch/text-embeddings/requirements.txt
