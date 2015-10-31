FROM ubuntu:14.04 

RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get -y update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y tar libxext-dev libxrender-dev libxtst-dev oracle-java8-installer

RUN wget https://download.jetbrains.com/webide/PhpStorm-9.0.2.tar.gz && \
    tar -zxvf PhpStorm-9.0.2.tar.gz && \
    rm -f PhpStorm-9.0.2.tar.gz

WORKDIR PhpStorm-141.2462

CMD ["bin/phpstorm.sh"]
