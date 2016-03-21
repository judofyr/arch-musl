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
  makeit
)
