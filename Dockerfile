FROM gitpod/workspace-full
RUN apt-get update -y
RUN apt-get install -y pkg-config zip g++ zlib1g-dev unzip python3
RUN chmod +x bazel-0.28.1-installer-linux-x86_64.sh \
 && ./bazel-0.28.1-installer-linux-x86_64.sh --user
