#!/usr/bin/env sh
cd vte-ng && git checkout 0.48.2-ng && ./autogen.sh && make && sudo make install
cd ../termite && make && sudo make install
