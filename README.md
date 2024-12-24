# Image Toolkit
Image Image Toolkit 是一款专为解决容器镜像跨不同镜像仓库同步问题而设计的自动化工具。在当今多云环境和复杂的开发部署流程下，常常需要将镜像从一个源仓库（如企业内部的私有仓库）快速、准确地复制到目标仓库（如云端的公共仓库或其他团队的协作仓库），以满足诸如部署、共享、备份等多样化需求，本工具应运而生。
## Usage

```yaml
name: ci

on:
  push:

jobs:
  image-sync:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
        
      - name: Set up Image Sync
        uses: docker/setup-buildx-action@main
```

## Customizing

### inputs

The following inputs can be used as `step.with` keys:

> `List` type is a newline-delimited string
> ```yaml
> driver-opts: |
>   image=moby/buildkit:master
>   network=host
> ```

> `CSV` type must be a comma-delimited string
> ```yaml
> platforms: linux/amd64,linux/arm64
> ```

| Name                         | Type     | Default            | Description                                                                                                                                                                  |
|------------------------------|----------|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `version`                    | String   |                    | [Buildx](https://github.com/docker/buildx) version. (eg. `v0.3.0`, `latest`, `https://github.com/docker/buildx.git#master`)                                                  |
| `driver`                     | String   | `docker-container` | Sets the [builder driver](https://docs.docker.com/engine/reference/commandline/buildx_create/#driver) to be used                                                             |
| `driver-opts`                | List     |                    | List of additional [driver-specific options](https://docs.docker.com/engine/reference/commandline/buildx_create/#driver-opt) (eg. `image=moby/buildkit:master`)              |
| `buildkitd-flags`            | String   |                    | [BuildKit daemon flags](https://docs.docker.com/engine/reference/commandline/buildx_create/#buildkitd-flags)                                                                 |

### outputs

The following outputs are available:

| Name        | Type   | Description                                         |
|-------------|--------|-----------------------------------------------------|

### environment variables

The following [official docker environment variables](https://docs.docker.com/engine/reference/commandline/cli/#environment-variables) are supported:

| Name            | Type   | Default     | Description                                     |
|-----------------|--------|-------------|-------------------------------------------------|
| `DOCKER_CONFIG` | String | `~/.docker` | The location of your client configuration files |

## Notes

### `nodes` output

## Contributing

Want to contribute? Awesome! You can find information about contributing to
this project in the [CONTRIBUTING.md](/.github/CONTRIBUTING.md)

## References
https://docs.github.com/zh/actions/sharing-automations/creating-actions/about-custom-actions