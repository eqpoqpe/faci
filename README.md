# facial
C Programming Language Project Interfaces management and creative.

# Structure
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
