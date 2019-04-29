FROM debian:buster-slim
ENV CPU=1 \
    MEM=256M
RUN apt update -qq && \
    apt install -yqq stress && \
    rm -rf /var/lib/apt/lists/*

CMD stress --cpu $CPU --vm 1 --vm-bytes $MEM --vm-hang 0
