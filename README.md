# Demo for the Capabilities of Software Engineering 2.0

## Set up

### Build tool service: bazel

#### insert the following into the default Dockerfile
See https://docs.bazel.build/versions/master/install-ubuntu.html.

```bash
RUN apt-get install pkg-config zip g++ zlib1g-dev unzip python3
RUN wget https://github.com/bazelbuild/bazel/releases/download/0.28.1/bazel-0.28.1-installer-linux-x86_64.sh
RUN chmod +x bazel-0.28.1-installer-linux-x86_64.sh \
 && ./bazel-0.28.1-installer-linux-x86_64.sh --user
```
#### add the following into the .bashrc
```bash
export PATH="$PATH:$HOME/bin"
```

#### test the installation
Run the following command in the example folder:
```bash
bazel build
```