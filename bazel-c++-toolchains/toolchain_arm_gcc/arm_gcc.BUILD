load("@bazel_tools//tools/cpp:unix_cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
	name = "cc_toolchain_config",
	cpu = "arm",
	compiler = "gcc",
	toolchain_identifier = "arm_gcc",
	host_system_name = "local",
	target_system_name = "local",
	target_libc = "unknown",
	abi_version = "unknown",
	abi_libc_version = "unknown",
	tool_paths = {
		"gcc": "bin/arm-none-eabi-g++",
		"cpp": "bin/arm-none-eabi-cpp",
		"ar": "bin/arm-none-eabi-ar",
		"nm": "bin/arm-none-eabi-nm",
		"ld": "bin/arm-none-eabi-ld",
		"as": "bin/arm-none-eabi-as",
		"objcopy": "bin/arm-none-eabi-objcopy",
		"objdump": "bin/arm-none-eabi-objdump",
		"gcov": "bin/arm-none-eabi-gcov",
		"strip": "bin/arm-none-eabi-strip",
		"llvm-cov": "/bin/false",
	},
	compile_flags = [
		"-isystem", "external/arm_gcc/arm-none-eabi/include/c++/11.2.1/arm-none-eabi",
		"-isystem", "external/arm_gcc/arm-none-eabi/include/c++/11.2.1",
		"-isystem", "external/arm_gcc/arm-none-eabi/include",
		"-isystem", "external/arm_gcc/lib/gcc/arm-none-eabi/11.2.1/include",
	],
	link_flags = [ "--specs=nosys.specs", ]
)

toolchain(
	name = "toolchain",
	exec_compatible_with = [
		"@platforms//os:linux",
		"@platforms//cpu:x86_64",],
	target_compatible_with = [
		"@platforms//os:none",
		"@platforms//cpu:arm",
	],
	toolchain_type = "@rules_cc//cc:toolchain_type",
	toolchain = ":cc_toolchain",
)


filegroup(
	name = "all",
	srcs = glob(["**/*",]),
)

cc_toolchain(
	name = "cc_toolchain",
	all_files = ":all",
	ar_files = ":all",
	as_files = ":all",
	compiler_files = ":all",
	dwp_files = ":all",
	linker_files = ":all",
	objcopy_files = ":all",
	strip_files = ":all",
	dynamic_runtime_lib = ":all",
	static_runtime_lib = ":all",
	toolchain_config = ":cc_toolchain_config",
)
