#!/bin/bash
docker build -t diamorphine:latest .
docker run --rm -it --privileged -v /lib/modules/:/lib/modules/:ro -v /usr/src/:/usr/src/:ro  diamorphine:latest