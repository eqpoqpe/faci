# blcc

script of `BETM library C creator`, it's good work for you.

## COMMAND

### !new

```
.hello/
  |-- lib/
  |    |-- interface.h
  |    |-- example.h
  |
  |-- src/
  |    |-- hello.c
  |    |-- main.c
  |
  |-- interface.blit
  |-- file.lock
```
interface.blit

```
grep -r "int main(*.*.*)" | awk -F: '{print $1}'
```
