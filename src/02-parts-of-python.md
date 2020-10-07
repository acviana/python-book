# 02: Parts of Python

## Code Formatting

Python has a set of conventions and best practices that roughly captured in a document called [PEP8](link).
While reading this document is useful, where ever possible we want to automate work and remove decision making.

Black is a relatively new tool which we can use to automatically and consistently format our code in the a way that is consistent with the best practices of the Python community.

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
