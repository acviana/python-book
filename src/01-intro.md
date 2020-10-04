# High Performing Analytical Projects in Python

You're working on a major data project for your company.
What started as an off-hand request has turned into a months-long project that's produced a Jupyter Notebook thousands of lines long.
Despite being high-impact this project only runs on your laptop.
Even though you can always fix it eventually it tends to break when you make changes.
You're pretty sure it's right but you have nagging doubts.
You know that the project could be better ...
but how? What's missing?

# Outline

 - Introduction
   - Who is this text for?
   - What are we trying to do?
   - What are we not trying to do?
 - In the Notebook
   - Python Odds and Ends
     - F-Strings
     - Dictionaries
     - Formatting, PEP8, and Black
   - Functions
     - Why functions?
     - Single-Purpose Functions
     - Parameterized Functions
     - Main functions
   - Docstrings
 - In the Project
    - Command Line Basics
    - Version Control
      - Git basics
      - Remote Repositories
    - Modules
      - Intro to Python Modules
      - if \_\_name\_\_ == "\_\_main\_\_"
    - Testing
    - MakeFiles

# Who Is This text For?

This text is intended for anyone for who has found themselves maintaining a code base in Python without training in software development best practices.
Frequently these people are data scientists, analysts, academics, or students with backgrounds in areas other than computer science.
For the purposes of this text I will refer to all of these people are "analysts".

One of the distinguishing features of analysts is that they tend to work on projects that have singular outputs. Did this trial show an improved drug resistance? Is there a trend in our year-over-year sales data? Which zip codes had the highest incidents of home sales? For many analysts it's tempting to think of these tasks as one-offs. They may be tasks that require coding but they are not _software projects_ (so they think).

Contrast this with the work of a software engineer. They are not just building an webpage or a software package, they are building a multipurpose tool that be used repeatedly.

The types of software projects (and they are software projects) that these "analysts" run tend to have common attributes.
They tend to be analytical in nature (hence our blanket terminology) producing some sort of data-related output such as a dataset or a set of plots.
Unlike engineers they are often not thinking about building platform such as a dynamic websites or even running their code anywhere but their own computer (until of course, they realize they have to).

The common themes continue, sometimes their code bases are inherited from people who have gone on to other organizations.
Other times they were small projects that gradually grew massive walls of code.
Whatever the origins, the result is usually the same.
Complex and fragile scripts in Python modules and Jupyter notebooks with several versions that are difficult (and scary!) to edit.


Pragmatic and self-taught, analysts tend to arrive at a similar set of conventions.
They tend to grab a hold of the first handful of language features that allow them to solve their immediate problem.
If they are working with raw Python this tend to be lists and deeply nested for looks and case statements.
If they are using Pandas, it tend to be whatever set of methods they can get to work first, often times manually setting indexes.
As their problem inevitably grow in complexity they push their fundamental tools to the extreme often finding ingenious and unique solutions to what are unfortunately commonplace problems with far simpler solutions.

This, I expect, is where most readers will pick up this text.
Having built what feels like a house of cards what's next? Folks in this positions unfortunately end up questioning their qualifications (I guess only engineers can do this!) and even their aptitude not realizing that they have actually solved much harder problems than they need to.
Self-directed study in this area can be frustration as well.
Search results for learning how to code to be overly basic intros to Python, too focused on computer science fundamentals like implementing sorting algorithms from scratch.
How can you make your code just better? What does better even look like?

This highly motivated and self-taught individual, not quite an engineer but needing the best light-weight solutions from that field, is whom is text is intended for.
This text sets out to present a path for reworking projects from the ground up to be simpler, more maintainable, and more reliable.
This text is not intended to teach you to be a software engineer, nor do you need to be to write high-performing analytical software.
Indeed, most engineers, lacking an analysts domain knowledge and analytical tools, could not execute one of these analytics projects without outside help.
Really, having most of what they need to move forward, this text aims to give the reader the rest of what they need to create high performing analytic project.

TODO: reformat as list of good and bad software.

TODO: A note on the utility and limitations of spreadsheets

TODO: What this text is not

Code Level

Python has a set of conventions and best practices that roughly captured in a document called [PEP8](link).
While reading this document is useful, where ever possible we want to automate work and remove decision making.

Black is a relatively new tool which we can use to automatically and consistently format our code in the a way that is consistent with the best practices of the Python community.

## Parts of Python: F-Strings

Throughout this text we will make use a string concatenation feature called _f-strings_.
Introduced in Python 3.6 [f-strings](https://www.python.org/dev/peps/pep-0498/) replace the `%` operator, the `.format` method, and the more common method of just adding a bunch of strings together.
Here are a few examples of what you can do with f-strings:

```python
>>> my_name = "Bob"
>>> print(f"My name is {my_name}")
My name is Bob
```

## Parts of Python: Dictionaries

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

## Parts of Python: Functions

Functions have the following benefits:

 - They encapsulate code and provide name spaces
 - They allow us to create abstractions
 - They allow for standard documentation
 - They allow code to be reusable
 - They allow code to be multipurpose

### Definition vs Execution: An Intro to Functions

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



### Building Better Tools: Parameterizing Functions

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


### One Thing At A Time: Single-Purpose Functions

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