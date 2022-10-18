FROM ubuntu:jammy
RUN apt update -y && apt -y install gcc make kmod netcat linux-tools-generic bpfcc-tools tcpdump
RUN useradd -ms /bin/bash newuser
COPY . /home
WORKDIR /home
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
