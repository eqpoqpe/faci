## Keyword
`PTR` a pointer

| @Keyword |  |  |  |
| --- | --- | --- | --- |
| `PTR?void` | void * |  | void |
| `PTR?int` | int * |  | int |
| `PTR?char` | char * |  | char |
| `PTR?float` | float * |  | float |
| `PTR?double` | double * |  | double |
| `PTR?SCT?` | `PTR?SCT?`”foo_s” | struct foo_s * | struct |
| `PTR?SCTT?` | `PTR?SCTT?`”foo_so” | foo_so * | typedef struct |
| `PTR?UIN?` | `PTR?UIN?`”foo_u” | union foo_u * | union |
| `PTR?UINT?` | `PTR?UINT?`”foo_uo” | foo_uo * | typedef union |
| `PTR?ENUM?` | `PTR?ENUM?`"foo_e” | enum foo_e * | enum |
| `PTR?ENUMT?` | `PTR?ENUMT?`"foo_eo” | foo_eo * | typedef enum |

`SCT` a struct

`SCTT` a defined type of struct

`UIN` a union

`UINT` a defined type of union

`ENUM` a enum

`ENUMT` a defined type of enum

## Reference

`PTR?SCTT?"foo_so"{21, NULL, "name"}` same as `PTR?DEF?SCT?"foo_s"{}` the `DEF` meaning is a type of defined, found the defined type from source file.

`PTR?int."ptr"` a pointer of integer of ptr;

`PTR?DEF?"foo"` found the defined typedef from source file;

`PTR?DEF?"foo"."ptr"` a pointer of “foo” of ptr;
