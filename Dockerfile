from ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install neovim git curl

RUN useradd -d /home/flc -m -s /bin/bash flc
WORKDIR /home/flc
USER flc

RUN mkdir -p /home/flc/.config/ && \
  cd /home/flc/.config && \
  git clone https://github.com/fernandocanizo/dot-nvim.git nvim

