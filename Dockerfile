FROM ubuntu:16.04

# install native dependencies
RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		apt-utils \
		build-essential \
		curl \
		xvfb \
		ffmpeg \
		xorg-dev \
		libsdl2-dev \
		swig \
		cmake \
		python-opengl \
		libopenmpi-dev \
		zlib1g-dev \
		python3-pip \
		python3-dev \
		python3-setuptools

# install python dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

# copy startup script
COPY start.sh /root/start.sh
RUN chmod +x ~/start.sh
ENTRYPOINT ["/root/start.sh"]

# copy notebook file
RUN mkdir -p /root/workspace
COPY wdll4.ipynb /root/workspace/wdll4.ipynb
