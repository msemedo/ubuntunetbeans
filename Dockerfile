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
ADD run /usr/local/bin/netbeans
#CMD /usr/local/bin/netbeans
CMD /bin/bash
