FROM mono:3.12

RUN apt-get update && apt-get install -y wget unzip git mono-devel

WORKDIR /usr/local/src
RUN git clone --depth=10 --branch=master https://github.com/chocolatey/choco.git

WORKDIR /usr/local/src/choco
RUN chmod +x build.sh
RUN ./build.sh

COPY choco /usr/local/bin/choco
RUN chmod +x /usr/local/bin/choco

WORKDIR /root
