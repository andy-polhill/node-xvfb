ARG  TAG=latest
FROM node:{TAG}

# Follows from the thread at https://github.com/segmentio/nightmare/issues/224

RUN apt-get update && apt-get install -y \
  xvfb \
  x11-xkb-utils \
  xfonts-100dpi \
  xfonts-75dpi \
  xfonts-scalable \
  xfonts-cyrillic \
  x11-apps \
  clang \
  libdbus-1-dev \
  libgtk2.0-dev \
  libnotify-dev \
  libgnome-keyring-dev \
  libgconf2-dev \
  libasound2-dev \
  libcap-dev \
  libcups2-dev \
  libxtst-dev \
  libxss1 \
  libnss3-dev \
  gcc-multilib \
  g++-multilib \
  chromium

  ADD xvfb-chromium /usr/bin/xvfb-chromium
  RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
  RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser
