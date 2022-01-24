# Facial
C Programming Language Project Interfaces management and creative.

## Project Directory Structure

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

**interface.blit**
```
grep -r "int main(*.*.*)" | awk -F: '{print $1}'
```

# Command

`~$ faci` `{Command}` `[Optionals,]`

| Commands | Necessary | Optional | Facirc | Unitrc |  |
| --- | --- | --- | --- | --- | --- |
| unit |  |  |  |  |  |
|  | . |  |  |  |  |
|  |  | --only -O | - | ONLY_TEST |  |
|  |  | --link-source -L | - | LINK_SOURCE | enable disable |
|  |  | --out -o | OUT_DIR | OUT_DIR |  |
|  |  | --info -i | - | INFO_PRINT | enable  disable |
| Init |  |  |  |  |  |
|  | --di -d |  | - | - |  |
|  |  | --lib -b | - | - |  |
|  |  | --proj -p | - | - |  |
