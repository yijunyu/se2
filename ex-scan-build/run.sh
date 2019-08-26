scan-build-9 gcc 1.c
cd sam && scan-build-9 make
python parseErrors.py /tmp/scan-build-*/index.html
