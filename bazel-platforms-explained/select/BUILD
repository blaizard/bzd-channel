genrule(
	name = "os",
	outs = ["os.txt"],
	cmd = select({
		"@platforms//os:linux": "echo 'Linux' > $@",
		"@platforms//os:windows": "echo 'Windows' > $@",
		"//conditions:default": "echo 'Unknown' > $@",
	})
)
