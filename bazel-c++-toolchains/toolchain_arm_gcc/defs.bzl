load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def install_toolchain_arm_gcc():

   http_archive(
      name = "arm_gcc",
      urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz"],
      strip_prefix = "gcc-arm-11.2-2022.02-x86_64-arm-none-eabi",
      sha256 = "8c5acd5ae567c0100245b0556941c237369f210bceb196edfe5a2e7532c60326",
      build_file = "//toolchain_arm_gcc:arm_gcc.BUILD",
   )


   native.register_toolchains(
       "@arm_gcc//:toolchain",
   )
