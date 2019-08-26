if [ ! -d bazel ]; then
	git clone https://github.com/bazelbuild/bazel
fi
cd bazel/examples/cpp
bazel build
