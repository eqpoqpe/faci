# facial
C Programming Language Project Interfaces management and creative.

**Directory structure of projects**

`software`
```
hello
  |`- lib/
  |     |`- interface.h
  |      `- example.h
  |
  |`- src/
  |    |`- hello.c
  |     `- main.c
  |
  |`- interface.blit
  |`- file.lock
```

`library`
```
```

**interface.blit**

```
grep -r "int main(*.*.*)" | awk -F: '{print $1}'
```
