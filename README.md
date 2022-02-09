# scheduler

[![Build Status](https://github.com/distbuild/scheduler/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/scheduler/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/scheduler/branch/main/graph/badge.svg?token=FM4NOMPT7Q)](https://codecov.io/gh/distbuild/scheduler)
[![License](https://img.shields.io/github/license/distbuild/scheduler.svg)](https://github.com/distbuild/scheduler/blob/main/LICENSE)
[![Tag](https://img.shields.io/github/tag/distbuild/scheduler.svg)](https://github.com/distbuild/scheduler/tags)
[![Gitter chat](https://badges.gitter.im/craftslab/distbuild.png)](https://gitter.im/craftslab/distbuild)



## Introduction

*scheduler* is the build scheduler of [distbuild](https://github.com/distbuild) written in Rust.



## Prerequisites

- Rust >= 1.57.0



## Run

```bash
git clone https://github.com/distbuild/scheduler.git

cd scheduler
make build
./target/release/scheduler --config-file="$PWD/src/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/scheduler.git

cd scheduler
make docker
docker run -v "$PWD"/src/config:/tmp ghcr.io/distbuild/scheduler:latest --config-file="/tmp/config.yml"
```



## Usage

```
USAGE:
    scheduler --config-file <NAME>

OPTIONS:
    -c, --config-file <NAME>    Config file (.yml)
    -h, --help                  Print help information
    -V, --version               Print version information
```



## Settings

*scheduler* parameters can be set in the directory [config](https://github.com/distbuild/scheduler/blob/main/src/config).

An example of configuration in [config.yml](https://github.com/distbuild/scheduler/blob/main/src/config/config.yml):

```yaml
apiVersion: v1
kind: scheduler
metadata:
  name: scheduler
spec:
  foo: foo
```



## License

Project License can be found [here](LICENSE).



## Reference
