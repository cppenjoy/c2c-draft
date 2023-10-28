# Welcome to C2C Documentation

C2C (C to C) is an object-oriented programming language designed specifically for solving low-level tasks. It provides developers with powerful tools and features needed to work with hardware and low-level aspects of programming.

* Ease of use: C2C is based on the C programming language, so it will be easier for developers familiar with this language to master and use C2C. In addition, C2C provides a simple and intuitive syntax that facilitates development.

* Powerful low-level programming tools: C2C provides multifunctional libraries and toolkits for working with hardware, memory management and other low-level resources. This allows developers to interact effectively with the hardware.

## Code examples

        Fibonacci
```c
int fibonacci(int n) 
{
    if (n == 0)
        return 0; // base case for n = 0

    if (n == 1)
        return 1; // base case for n = 1

    return fibonacci(n-1) + fibonacci(n-2); // recursive call for n > 1
}
```

        Bubble Sort

```c
void bubble_sort(int array[], int size) 
{
    for (int i = 0; i < size - 1; i++) 
    {
        for (int j = 0; j < size - i - 1; j++) 
        {
            if (array[j] > array[j + 1]) 
            {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}
```

        Factorial

```c
uint64 factorial(uint n) 
{
    if (n == 0)
        return 1;

    return n * factorial(n - 1);
}
```

## C2C Compiler Implementations
The main compiler of the c2c - 2cc language. It includes the standard C2C language library, and CRT for Linux and Windows

The 2cc compiler is open source, and you can find it on Github by following the link below

- [2cc Compiler](https://github.com/c2c-team/c2c-compiler)

## C2C Draft
You can view the official c2c language repository at any time at the link below

- [C2C-Draft](https://github.com/c2c-team/c2c-draft)