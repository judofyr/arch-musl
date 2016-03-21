#!/bin/sh

makeit() {
  makepkg --clean --syncdeps --install --noconfirm
}

set -e

(
  cd zlib
  makeit
) &&

(
  cd openssl
  gpg --recv-key D9C4D26D0E604491
  makeit
)
