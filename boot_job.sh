#!/usr/bin/env bash
set -e
TAG="golden-delta-cosmic-canyon"
LIB="foam-array.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/littlexayvi/plumphallwaykit/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
