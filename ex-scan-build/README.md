This folder contains buggy code extracted from the tutorial on static analysis:

## Example 1
http://web.cs.ucla.edu/~tianyi.zhang/examples.zip.

To show the errors, run the following:

```bash
scan-build-9 gcc 2.c
scan-view-9 /tmp/scan-build-*
```

## Example 2
http://web.cs.ucla.edu/~tianyi.zhang/sam.zip

```bash
cd sam && scan-build-9 make
scan-view-9 /tmp/scan-build-*
```

## Example 3
http://research.microsoft.com/pubs/69126/icse05churn.pdf
```bash
python parseErrors.py /tmp/scan-build-*/index.html
```
