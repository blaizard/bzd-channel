cc_binary(
	name = "main",
	srcs = ["main.cc"],
	deps = [":mylib"],
	visibility = [
		"//:__subpackages__"
	]
)

cc_library(
	name = "mylib",
	hdrs = ["mylib.hh"],
	srcs = ["mylib.cc"],
)
