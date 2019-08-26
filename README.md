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
bazel
```

### Static Analysis tool service: scan-build

`scan-build` is a Perl script that invokes the Clang static analyzer for C/C++ programs.
It is part of the LLVM distributions.

See http://clang-analyzer.llvm.org/scan-build.html. User manual see http://manpages.ubuntu.com/manpages/trusty/man1/scan-build.1.html.

To set up `scan-build` with the SE 2.0 tool chain, we demonstrate the modifications to be made to the `Dockerfile` as follows:

```bash
RUN apt-get install -y clang
```

#### test the installation
Run the following command in the example folder:
```bash
cd ex-scan-build
./run.sh
```
