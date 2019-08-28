FROM gitpod/workspace-full
USER root
RUN apt-get update -y
RUN apt-get install -y pkg-config zip g++ zlib1g-dev unzip python3
RUN wget https://github.com/bazelbuild/bazel/releases/download/0.28.1/bazel-0.28.1-installer-linux-x86_64.sh
RUN chmod +x bazel-0.28.1-installer-linux-x86_64.sh \
 && ./bazel-0.28.1-installer-linux-x86_64.sh --user
RUN apt-get install -y clang
RUN apt-get install -y clang-tidy
RUN apt-get install -y clang-tools
RUN apt-get install -y graphviz
RUN apt-get install -y ninja-build
USER gitpod
