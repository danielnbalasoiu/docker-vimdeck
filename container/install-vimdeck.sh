#/bin/sh

set -e

apk --no-cache add --virtual .build bash build-base ruby-dev imagemagick-dev curl
apk --no-cache add imagemagick vim ruby ruby-bundler ruby-io-console git
gem install --no-document vimdeck

apk del .build

/container/user-cleanup.sh
/container/upgrade.sh

