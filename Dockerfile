FROM ubuntu
MAINTAINER info@zopyx.com
RUN apt-get update 
RUN apt-get --yes install libcairo2 libcurl3 libgif7 libgomp1 libjpeg8 libtiff5 libxml2 unzip gconf-service libasound2 libatk1.0-0 libcups2 libdbus-1-3 libgconf-2-4 libglib2.0-0 libharfbuzz0b 


ADD http://www.princexml.com/download/prince_11-1_ubuntu16.04_amd64.deb /tmp
RUN dpkg --install /tmp/prince_11-1_ubuntu16.04_amd64.deb 

ADD http://vivliostyle.com/download/formatter/linux/vivliostyle-formatter-2016.10-deb.zip /tmp
RUN unzip -d /tmp /tmp/vivliostyle-formatter-2016.10-deb.zip 
RUN ls /root 
RUN dpkg --install /tmp/vivliostyle-formatter-2016.10-deb/vivliostyle-formatter-2016.10-amd64.deb
