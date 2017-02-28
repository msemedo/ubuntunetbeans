FROM msemedo/ubuntuoraclejava8:latest
RUN add-apt-repository ppa:vajdics/netbeans-installer && \
	apt-get -y update && \
	apt-get -y upgrade && \
	apt-get install -y 	zip \
						libxext-dev \
						libxrender-dev \
						libxtst-dev && \ 
	apt-get install -y netbeans-installer && \
	apt-get clean

RUN mkdir -p /home/netbeansdev && \
    echo "netbeansdev:x:1000:1000:Developer,,,:/home/netbeansdev:/bin/bash" >> /etc/passwd && \
    echo "netbeansdev:x:1000:" >> /etc/group && \
    echo "netbeansdev ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/netbeansdev && \
    chmod 0440 /etc/sudoers.d/netbeansdev && \
    chown netbeansdev:netbeansdev -R /home/netbeansdev
USER netbeansdev
ENV HOME /home/netbeansdev 
WORKDIR /home/netbeansdev

CMD /usr/bin/netbeans
