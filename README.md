# scheduler

[![Build Status](https://github.com/distbuild/scheduler/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/scheduler/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/scheduler/branch/main/graph/badge.svg?token=S78151LC5J)](https://codecov.io/gh/distbuild/scheduler)
[![Go Report Card](https://goreportcard.com/badge/github.com/distbuild/scheduler)](https://goreportcard.com/report/github.com/distbuild/scheduler)
[![License](https://img.shields.io/github/license/distbuild/scheduler.svg)](https://github.com/distbuild/scheduler/blob/main/LICENSE)
[![Release](https://img.shields.io/github/release/distbuild/scheduler.svg)](https://github.com/distbuild/scheduler/releases/latest)



## Introduction

*scheduler* is the scheduler of [distbuild](https://github.com/distbuild) written in Go.



## Prerequisites

- Go >= 1.17.0



## Run

```bash
git clone https://github.com/distbuild/scheduler.git

cd scheduler
version=latest make build
./bin/scheduler --config-file="$PWD/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/scheduler.git

cd scheduler
version=latest make docker
docker run -v "$PWD"/config:/tmp ghcr.io/distbuild/scheduler:latest --config-file="/tmp/config.yml"
```



## Usage

```
usage: scheduler --config-file=CONFIG-FILE [<flags>]

distbuild scheduler

Flags:
  --help                     Show context-sensitive help (also try --help-long
                             and --help-man).
  --version                  Show application version.
  --config-file=CONFIG-FILE  Config file (.yml)
```



## Settings

*scheduler* parameters can be set in the directory [config](https://github.com/distbuild/scheduler/blob/main/config).

An example of configuration in [config.yml](https://github.com/distbuild/scheduler/blob/main/config/config.yml):

```yaml
apiVersion: v1
kind: scheduler
metadata:
  name: scheduler
spec:
```



## License

Project License can be found [here](LICENSE).



## Reference
