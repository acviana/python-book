# High Performing Analytical Projects in Python

```
And you may ask yourself
"Am I right? Am I wrong?"
And you may say to yourself
"My God! What have I done?"

 - Talking Heads
```

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

One of the distinguishing features of analysts is that they tend to work on projects that have singular outputs.
Did this trial show an improved drug resistance? 
Is there a trend in our year-over-year sales data? Which zip codes had the highest incidents of home sales? 
For many analysts it's tempting to think of these tasks as one-offs.
They may be tasks that require coding but they are not _software projects_ (so they think).

Contrast this with the work of a software engineer.
They are not just building an webpage or a software package, they are building a multipurpose tool that be used repeatedly.

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
