# Demo for the Capabilities of Software Engineering 2.0

## Static Analysis tool service: scan-build

## Build tool service: bazel

```bash
# https://docs.bazel.build/versions/master/install-ubuntu.html
RUN apt-get install pkg-config zip g++ zlib1g-dev unzip python3
RUN https://github.com/bazelbuild/bazel/releases/download/0.28.1/bazel-0.28.1-installer-linux-x86_64.sh
RUN chmod +x bazel-0.28.1-installer-linux-x86_64.sh \
 && ./bazel-0.28.1-installer-linux-x86_64.sh --user
```
