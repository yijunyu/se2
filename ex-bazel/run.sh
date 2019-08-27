if [ ! -d bazel ]; then
	git clone https://github.com/bazelbuild/bazel
fi
cd bazel/examples/cpp
bazel build
cd -
###
# for visualization, see https://blog.bazel.build/2015/06/17/visualize-your-build.html
if [ ! -d tiny-workspace ]; then
	git clone https://github.com/kchodorow/tiny-workspace
fi
cd tiny-workspace
echo query --package_path $(pwd):$HOME/bin/base_workspace > ~/.bazelrc
bazel query 'deps(//:main)' --output graph > graph.in
dot -Tpng < graph.in > graph.png
gp open graph.png
cd -
