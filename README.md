Run `stress` in Debian container.

| ENV | Default | Description              |
|-----|---------|--------------------------|
| CPU | 1       | Number of CPUs to use    |
| MEM | 256M    | How much mem to malloc() |

Example consuming 1 core and 1GB of ram:

```shell
$ docker run --rm -it -e "MEM=1G" nbarnum/stress
stress: info: [6] dispatching hogs: 1 cpu, 0 io, 1 vm, 0 hdd
```
