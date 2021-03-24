# Bazel build rules for picojson

To use these rules, add the following to your `WORKSPACE` file:

```bazel
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_3rdparty_bazel_rules_picojson",
    commit = "2b16dbf609beb523e685c76aab77fcf873666c1d",
    remote = "https://github.com/3rdparty/bazel-rules-picojson",
    shallow_since = "1616624809 -0700",
)

load("@com_github_3rdparty_bazel_rules_picojson//:bazel/picojson.bzl", "picojson_deps")

picojson_deps()
```

You can then use `@com_github_kazuho_picojson//:picojson` in your target's `deps`.
