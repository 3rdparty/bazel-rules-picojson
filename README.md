# Bazel build rules for picojson

To use these rules, add the following to your `WORKSPACE` file:

```bazel
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_3rdparty_bazel_rules_picojson",
    commit = "",
    remote = "https://github.com/3rdparty/bazel-rules-picojson",
)

load("@com_github_3rdparty_bazel_rules_picojson//:bazel/picojson.bzl", "picojson_deps")

picojson_deps()
```

You can then use `@picojson//:picojson` in your target's `deps`.
