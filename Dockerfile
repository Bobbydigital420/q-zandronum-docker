FROM archlinux:latest

WORKDIR /
ENTRYPOINT ["/home/zandronum/qzandronum/q-zandronum-server"]

RUN pacman -Sy sdl12-compat wget --noconfirm
RUN useradd -ms /bin/bash zandronum
USER zandronum
ADD zandronum.ini /home/zandronum/.config/zandronum/
WORKDIR /home/zandronum
RUN wget https://github.com/IgeNiaI/Q-Zandronum/releases/download/1.4.20/Q-Zandronum_1.4.20_Linux_amd64.tar.gz -P /home/zandronum/
RUN mkdir /home/zandronum/qzandronum && tar -xf Q-Zandronum_1.4.20_Linux_amd64.tar.gz -C /home/zandronum/qzandronum



