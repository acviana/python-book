# 03: Functions

Functions have the following benefits:

 - They encapsulate code and provide name spaces
 - They allow us to create abstractions
 - They allow for standard documentation
 - They allow code to be reusable
 - They allow code to be multipurpose

## Definition vs Execution: An Intro to Functions

Functions are a way of wrapping blocks of related code into a reusable format.
Functions are not a difficult concept to understand in terms of syntax.
However, most analysts struggle to immediately see the application, that is the value, of functions.
Here is an example:


```python
def my_function():
    return "Hello"

my_response = my_function()
print(my_response)
```

Even the most novice Python programmer would not be surprised to learn that this code block would print `Hello`.
While this is neat, why is this better than simply writing `print("Hello")`? We've used 4 times as many lines and arguable more complicated syntax to essentially accomplish the same thing, where is the pay off?

Let's consider the following code block:

```python
import pandas as pd

# Whatever
```

Instead we want to separate two concept here: _defining_ our code and _executing_ our code.


```python
def my_function():
    pass

my_function()
```

What did we gain by doing this?

First of all we have created a tool.
A tool that can be reused, improved, and even replaced at some point.
Conceptually, we've also created a framework that allows us to start thinking in abstractions.
For example if we were writing a data engineering pipeline we might have the 3 classic parts of an ETL pipeline: extraction, transformation, and loading.

## Parameterized Functions

In our last example you'll notice that our code only did one thing with all the values "hard coded" as strings in the function definition.
We can make our functions more useful by making some of those strings _parameters_ that can be dynamically specified where ever the function is called.
For Example:

```python
def count_letters(word):
    return f"{word} has {len(word)} letters"

print(count_letters("foo"))
print(count_letters("bar"))
```

Now the output looks like this:

```
foo has 3 letters
bar has 3 letters
```

## Single-Purpose Functions

```python
def two_things_at_once():
    pass
```

```python
def load_data():
    pass


def filter_data():
    pass

raw_data = load_data()
filtered_data = filter_data(raw_data)
```

## Docstrings

Functions are also a useful organizational unit for documentation.
Python functions allow for a special kind of annotation called a _docstring_.
Like their name implies docstrings are multiline strings right after the definition line of a function.
Let's look at an example:

```python
def fahrenheit_to_celsius(temp_f):
    """
    Args:
        temp_f (float): Temperature in fahrenheit.

    Returns:
        (float): Temperature in Celsius.
    """
    return (temp_f - 32) / 1.8
```

As we have already seen Python allows us broad stylistic flexability but sticking to conventions allows us to take advantages of best practices as well as creating code that is easily understood by the broader Python community.
There is more variance in docstring conventions that some of the other areas we've covered but a common convention we suggest following is the [Google Style Guide](https://google.github.io/styleguide/pyguide.html#383-functions-and-methods).
It's the same convention I followed in the example above.
It has the benefit of being easily human-readible but as we will see in future chapters, it's can easily be parsed by machines as well to create automatically generated documentation.
