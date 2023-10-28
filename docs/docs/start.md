# Let's get started

## Basics

The main paradigm of C2C is imperative programming. Therefore, if you have previously had experience with languages such as C, C++, Rust, C#, JavaScript, Go, Java, Kotlin, it will be much easier for you to get used to

If you are a beginner who had no previous experience with imperative programming, then read this chapter, if you are an advanced user, then skip it, you will not learn anything new

### Imperative programming

* The program consists of instructions that tell the processor what to do
* Instructions are executed linearly or in other words one after the other
* The data obtained by the previous instruction can be used by the following instruction

For example, here are pseudo-assembly instructions

```
DECLARE_VAR B
MOV B, 1
ADD B, 3
```

In this code, we create a variable B, assign it the value 1, and save the result of adding variables B and 3 to variable B
All instructions are executed one after another, we know about the order of execution of instructions

### Type System
Type System is a set of rules in programming languages that assign properties, called types, to various constructs that make up a program - such as variables, expressions, functions or modules. The main role of the type system is to reduce the number of bugs in programs by defining interfaces between different parts of the program and then checking the consistency of the interaction of these parts

Typing has three main properties: 

* Static or dynamic 

* Strong or weak 

* Explicit or Implicit


#### Static or dynamic
Static or dynamic is a technique widely used in programming languages, in which a variable, a subroutine parameter, a function return value are associated with a type at the time of declaration and the type cannot be changed later (the variable or parameter will accept, and the function will return values of this type only).

Examples of statically typed languages: Ada, C, C++, C#, D, Java, ML, Pascal, Solidity, Go
Examples of dynamic typed languages: JavaScript, Python

#### Strong or weak
Strong or weak is a characteristic of the type system of a programming language, which reflects significant restrictions on type casting during assignments and operations. Strong - does not allow ghosts, weak - allows

#### Explicit or Implicit
Explicit — the data type for entities is explicitly written in the program.

Implicit — the data type can be omitted. Implicit typing is primarily characteristic of dynamically typed languages. In statically typed languages, it is used in conjunction with type inference

### Type System in C2C
The C2C language offers static, strong, explicit type system. Below is a table of data types


####  Data Types
| Type | Min Value | Max Value | Note | Aliases |
|-|-|-|-|-|
| void | nullptr | nullptr | *It is an incomplete type that cannot be completed* | There are no aliases |
| char | -128 | 127 | *It takes 1 byte on all platforms, so sizeof(char) = 1*. | There are no aliases |
| bool | 0 | 1 | *It takes 1 byte on all platforms, so sizeof(bool) = 1* | There are no aliases |
| int16 | -32,768 | 32 767 | *There are no notes* | short |
| int32 | -2 147 483 648 | 2 147 483 647 | *There are no notes* | int |
| int64 | -9 223 372 036 854 775 808 | 9 223 372,036,854,775,807 | *There are no notes* | long |

Each integer type offers an unsigned version

| Type | Min Value | Max Value | Note | Aliases |
|-|-|-|-|-|
| uchar | 0 | 255 | *It takes 1 byte on all platforms, so sizeof(char) = 1*. | unsigned char |
| uint16 | 0 | 65 535 | *There are no notes* | unsigned short |
| uint32 | 0 | 4 294 967 295 | *There are no notes* | unsigned int |
| uint64 | 0 | 18 446 744 073 709 551 615 | *There are no notes* | unsigned long |

#### BCL Data Types
| Type | Note |
|-|-|
| string | *Is an interface to std::vector<char>* |
| date | *Type for interaction with time* |

You will learn more about bcl(Base Class Library) in Chapter 3

#### Suffixes of integer types

Each integer literal has an int32 type by default, you can explicitly specify the literal type using prefixes. The table of prefixes is shown below

| Type | Suffix |
|-|-|
| s | int16 |
| i | int32 |
| l | int64 |
| us | uint16 |
| ui | uint32 |
| ul | uint64 |

Code Examples

```c
int some_integer_var = i10; // OK
int second_integer_var = 10; // OK, typeof(10) = int32
int64 primary_integer_var = 5; // Error, typeof(int64) != typeof(int32)
```

#### Rules for explicit transformations
If you want to cast one data type to another, then the C2C language offers you three casting operators

* safe_cast<T\>(v)
* subtype_cast<T\>(v)


##### Safe Cast
    Syntax
```
    safe_cast<T>(v)

    Where T is the type to be cast into, and v is the expression
```



Returns an expression to type if one of this condition satisfied:

* Type of T and type of expression v are number types (integers type, floating point types)
* T is pointer to void, and the expression type is a pointer to a number types
* T is a pointer to a number type, and type of expression is a pointer to void

If a floating-point number is reduced to an integer, then the fractional part is discarded
If an integer is reduced to a floating-point number, then the fractional part is added to the number in the form .0

Code Example

```c
float pi = 3.14;
int p = safe_cast<int>(pi); // OK, p = 3

char c = safe_cast<char>(true); // OK, true is representation of 1
bool exist = safe_cast<bool>(c); // OK, exist = true

double speed = safe_cast<double>("30.0"); // Error, "30.0" - pointer to char
```

##### Subtype Cast
    Syntax

```
subtype_cast<T>(v)

Where T is the type to be cast into, and v is the expression
```

Converts a pointer to a derived class into a pointer to a base class or converts a pointer to a base class to a pointer to a derived class

Returns an expression to type if one of this condition satisfied:

* T is pointer to base class, and v is pointer to derrived class
* T is pointer to derrived class, and v is pointer to base class

Code Example
```cpp
class Base
{};

class Derrived : Base
{};

int main()
{
    Base *base_object = new Base;
    Derrived *derrived_object = subtype<Derrived*>(base_object); // Down Cast

    Base *second_base_object = subtype<Base*>(derrived_object); // Up Cast
}
```