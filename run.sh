#!/bin/bash
singularity -s exec \
        --bind ./code:/code \
        --bind /usr/local/:/usr/local/ \
        --bind /usr/lib/x86_64-linux-gnu/libcuda.so.1:/usr/lib/x86_64-linux-gnu/libcuda.so.1 \
        --bind /usr/lib/x86_64-linux-gnu/libcuda.so.515.65.01:/usr/lib/x86_64-linux-gnu/libcuda.so.515.65.01 \
        --bind /usr/lib/x86_64-linux-gnu/libcuda.so:/usr/lib/x86_64-linux-gnu/libcuda.so \
        .container bash -c "bash _runner_ '$@'"
