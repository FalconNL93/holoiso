FROM archlinux
WORKDIR /app
COPY . /app

RUN pacman -Sy --noconfirm archiso
RUN mv /app/mkarchiso-holoiso /usr/bin && \
    chmod +x /usr/bin/mkarchiso-holoiso