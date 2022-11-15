platform(
	name = "windows",
	constraint_values = [
		"@platforms//os:windows",
	],
)

constraint_value(
	name = "myos",
	constraint_setting = "@platforms//os:os",
)

platform(
	name = "custom",
	constraint_values = [
		":myos",
	],
)
