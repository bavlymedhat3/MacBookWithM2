#!/usr/bin/env bash

git clone git@github.com:phpenv/phpenv.git ~/.phpenv
echo -e "\n# PHP" >> ~/.bashrc
echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(phpenv init -)"' >> ~/.bashrc
source ~/.bashrc


git clone https://github.com/php-build/php-build $(phpenv root)/plugins/php-build
phpenv rehash

# dependencies
brew install \
    autoconf \
    automake \
    bison \
    bzip2 \
    curl \
    gettext \
    gmp \
    icu4c \
    jpeg \
    krb5 \
    imagemagick \
    libedit \
    libiconv \
    libmcrypt \
    libmemcached \
    libpng \
    libjpeg \
    libxml2 \
    libxslt \
    libzip \
    libtool \
    make \
    openssl \
    pkg-config \
    re2c \
    readline \
    tidy-html5 \
    zlib

PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig:$(brew --prefix icu4c)/lib/pkgconfig:$(brew --prefix krb5)/lib/pkgconfig:$(brew --prefix libedit)/lib/pkgconfig:$(brew --prefix libxml2)/lib/pkgconfig" \
PHP_BUILD_CONFIGURE_OPTS="\
    --disable-fpm \
    --disable-phpdbg \
    --enable-debug \
    --with-bz2=$(brew --prefix bzip2) \
    --with-curl=$(brew --prefix curl) \
    --with-gettext=$(brew --prefix gettext) \
    --with-gmp=$(brew --prefix gmp) \
    --with-iconv=$(brew --prefix libiconv) \
    --with-icu-dir=$(brew --prefix icu4c) \
    --with-jpeg-dir=$(brew --prefix jpeg) \
    --with-libedit=$(brew --prefix libedit) \
    --with-libxml-dir=$(brew --prefix libxml2) \
    --with-libzip=$(brew --prefix libzip) \
    --with-mcrypt=$(brew --prefix libmcrypt) \
    --with-openssl \
    --with-png-dir=$(brew --prefix libpng) \
    --with-readline=$(brew --prefix readline) \
    --with-tidy=$(brew --prefix tidy-html5) \
    --with-xsl=$(brew --prefix libxslt) \
    --with-zlib=$(brew --prefix zlib) \
    --with-kerberos" \
phpenv install 8.2.5

# composer
git clone https://github.com/ngyuki/phpenv-composer.git ~/.phpenv/plugins/phpenv-composer
phpenv rehash
phpenv global 8.2.5
