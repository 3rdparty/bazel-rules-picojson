# Bazel build rules for picojson

Follows a "repos/deps" pattern (in order to deal with recursive dependencies). To use:

1. Copy the directory `./bazel/repos/bazel-rules-picojson` into your repository (i.e., if your project is called `project` then copy it into `./bazel/repos/project/bazel-rules-picojson` in order to enable `project` to also be depended on).

2. Either ... add the following to your `WORKSPACE` (or `WORKSPACE.bazel`):

```bazel
load("bazel/repos/project/bazel-rules-picojson/repos.bzl", picojson_repos="repos")
picojson_repos()

load("@com_github_3rdparty_bazel_rules_picojson//:bazel/deps.bzl", picojson_deps="deps")
picojson_deps()
```

Or ... following the "repos/deps" pattern add the following to your project's `repos.bzl`:

```bazel
load("bazel-rules-picojson/repos.bzl", picojson="repos")

def repos():
    picojson()
```

And the following to your project's `deps.bzl`:

```bazel
load("@com_github_3rdparty_bazel_rules_picojson//:bazel/deps.bzl", picojson="deps")

def deps():
    picojson()
```

3. You can then use `@com_github_kazuho_picojson//:picojson` in your target's `deps`.

4. Repeat the steps starting at (1) at the desired version of this repository that you want to use.
