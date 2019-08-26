scan-build-9 gcc 2.c
scan-view-9 /tmp/scan-build-*
cd sam && scan-build-9 make
python ../parseErrors.py /tmp/scan-build-*/index.html
