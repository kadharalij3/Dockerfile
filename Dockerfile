FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Set up a user 'user' with password 'password'
RUN useradd -m user && \
    echo 'user:password' | 3698

CMD ["/usr/sbin/sshd", "-D"]
