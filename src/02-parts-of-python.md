# 02: Parts of Python

## Code Formatting

Before we change the functionality or structure of our code we're going to start small and standardize our syntax.

TODO: Add some kind of motivation
P
Because Python largely ignore whitespace when interpreting code we have a lot of flexibility in how we can write our code.
For example, the following lines are all equivalent as far as the Python interpreter is concerned:

```python
(1+2)*3
(1 + 2) * 3
( 1 + 2 ) * 3
(1  +  2   ) *3
```

Given this flexibility should we just leave things up to personal preference?
There's a collection of sayings in software engineering that are just different ways of saying
"no special projects!"
Writing software is full of decision points.
Anywhere where we can remove minor decisions allows us to focus more attention on the design decisions that matter.

### Format Conventions with PEP8

While you can technically write Python with any number of formating conventions (as we just saw), Python has a basic set of conventions and best practices that captured in a document called [PEP8](link).
The guidelines in this document are by no means universal but they generally constitute what passes for standard Python formatting.
So, in our previous example PEP8 specifies we should have once space between operators and no spaced between parenthesis.
Meaning the generally excepted format would be `(1 + 2) * 3`.
PEP8 (and it's subsequent additions TODO) give recommendations for everything from line length, indentations, and white space.
It's worth reading it at least once to familiarize yourself with it.

TODO: More Examples

### Format Checking with Linting


While reading PEP8 is useful, where ever possible we want to automate work and remove decision making.
To help with this there are a variety of tools called _Linters_ that help check our code to see if it is in compliance with PEP8, even allowing us to set exceptions to some of it's suggestions.
Linters can be set up to run in your text editor or from the command line.
Regardless of how you run it the output is still the same, a suggested list of changes for you to review and manually implement.
Linters have their place but I suggest looking at an even more opinionated and automated solution

### Formatting with Black

[Black](https://black.readthedocs.io/en/stable/) is a relatively new tool which we can use to automatically and consistently format our code in the a way that is consistent with the best practices of the Python community.

TODO Example

## F-Strings

Throughout this text we will make use a string concatenation feature called _f-strings_.
Introduced in Python 3.6 [f-strings](https://www.python.org/dev/peps/pep-0498/) replace the `%` operator, the `.format` method, and the more common method of just adding a bunch of strings together.
Here are a few examples of what you can do with f-strings:

```python
>>> my_name = "Bob"
>>> print(f"My name is {my_name}")
My name is Bob
```

## Dictionaries

As a rule of thumb you should use a dictionary any time you are working with data where you reference things by name.
You should use a list any time you reference things by other.
Here is a classic example I see all the time:

```python
person = ["Mike", "Smith", "123 Pine Street"]
print(f"This person is named {person[0]} {person[1]}")
print(f"They live on {person[2]}")
```

While this works, it can quickly become awkward.
100 lines later, how am I supposed to remember if index `0` is the first name or the last name? Will I remember this a month from now? Will someone else working on this code be able to come to the same conclusion?

Let's try the same example instead with a dictionary.

```python
person = {
    "first_name": "Mike",
    "last_name": "Smith",
    "address": "123 Pine Street",
}
print(f"This person is named {person['first_name']} {person['last_name']}")
print(f"They live on {person['address']}")
```

Using a dictionary allows us to be more explicit, we can call a first name by its natural name.
This leads to clearer code and less bugs.
