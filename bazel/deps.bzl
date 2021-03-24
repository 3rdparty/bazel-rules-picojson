load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def picojson_deps():
    if "picojson" not in native.existing_rules():
        http_archive(
            name = "com_github_kazuho_picojson",
            url = "https://github.com/kazuho/picojson/archive/v1.3.0.tar.gz",
            sha256 = "056805ca2691798f5545935a14bb477f2e1d827c9fb862e6e449dbea22801c7d",
            strip_prefix = "picojson-1.3.0",
            build_file = "@com_github_3rdparty_bazel_rules_picojson//picojson:BUILD.bazel",
        )
