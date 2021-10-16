      

**Python Notes**

  

JS and Python comparison for me to understand better

  

1.  Variable declaration

In JS

let counter = 1;

  

In Python

counter = 1

  

1.  Incrementing a variable

In JS

counter = counter + 1; / counter += 1; / counter++;

  

In Python

counter = counter + 1;

  

1.  Conditions

  

In JS 

  

if(x < y) {

// statement goes here

}

  

In Python

  

if x < y:

// statement goes here with indentation

  

In JS

  

if(x < y) {

// if statement goes here

} else {

// else statement goes here

}

  

In Python

  

if x < y:

// if statement goes here

else:

// else statement goes here

  

  

  

In JS

  

if(x < y) {

// if statement goes here

} else if(x > y) {

// else if statement goes here

} else {

// else statement goes here

}

  

In Python

  

if x < y:

// if statement goes here

elif x > y:

// else if statement goes here

else: 

// else statement goes here

  

1.  Loops

In JS

  

while (true) {

// while statements goes here

}

  

In Python

  

while True:

// while statements goes here with indentation, True and False are proper nouns

  

  

In JS

  

for(let i=0; I < 50; I++) {

// for statement goes here

}

  

In Python

  

for i in range(50):

// for statement goes here, start iterating at 0 and all the way upto not including 50

  

1.  Data types

In JS

  

Boolean, Integer, String, undefined, null.

  

In Python

  

bool, float, int, str, dict - hash table, list - array that can resize, range - to range to value, set - collection of things where you make sure you don’t have duplicates of them, tuple - is a combination of things like (x,y), (lat, long)

  

  

  

from cs50 import get_float, get_int, get_string

  

In Python you skip the compilation step - python <name of the file to run> 

  

  

Compiling Python code

  

Source code 

  

|

|

Compiler

  

|

|

  

bytcode

|

|

  

Interpreter

  

  

<filename>.py

  

print(“hello world”)

  

print(“Hello”, s)

  

print(f”{s}, Hello”)

  

We can do operations within curly braces