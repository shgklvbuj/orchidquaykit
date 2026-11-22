#!/usr/bin/env bash
set -e
REPO="shgklvbuj/orchidquaykit"
LIB="manual-plan.a"
URL="https://github.com/${REPO}/releases/download/gentle-forest-crimson-comet/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
