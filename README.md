# Code_Challenge

I was given a set of 4 problems to solve for a junior developer position at Wolfram U and I'd like to demonstrate how I approached to solve them using Wolfram Language and other technologies.

## 4 Problems

> Create 5 single answer multiple choice questions, each with 4 unique choices. Use RadioButton, Checkbox, or similar control functions along with Style, Column or Grid.

> For each question add a Button labeled "Submit" that when clicked will add the user data to a public Databin. Use an Association for the data with keys "question" (Integer), "choice" (Integer), "date" (DateObject), and "id" (String) for the data. Add the current date and time along with that user's $WolframID to the Association.

> Deploy a form on the web that takes a $WolframID as input and returns a Dataset of that user data from the Databin\* used above.

> Deploy a form on the web that takes a question number (Integer) as input and returns a BarChart of all the answers to that question from the Databin\* used above.

My first impression when I saw this statement was.. `"Man I had no idea I can do web development using Wolfram Language!"` And the next thought that came to my mind was.. `"I'm not sure if I can finish this.."` Feeling devastated, I started by looking up Wolfram Language (WL from here on) [documentation]("https://reference.wolfram.com/language/") to find out how to use the features they said I should use.

Aside the fact that I don't know how to use the features in the instructions, I knew right away that I'm about to make some sort of a form to collect/save data in a database, and another form to query the database and return a visualization of the queried result. So I get the gist of the prompt but the problem as you may already know is.. **How do I learn a new language and create something like it in a span of one week?!??**

However, I'm going to keep in mind what I've learned over the past several months while I was studying to become a developer. A good developer is not someone who knows every minute detail about the language, but is someone who knows where to look for help and resources. So here I go!

## First Step: Form Object

I tried to scrape information from the WL documentation center and other resources such `Wolfram StackExchange` and `Wolfram Community` and here's what I've learned so far:

- The web form in WL is made up of **Form Objects** and it constitutes each row of the form
- They layout of the form is defined by the **FormLayoutFunction[]** (e.g., title, description, and etc.)

And here is how I defined the `Form Object`:
![](Resources/formObject.png)

Wolfram Language has quite a few symbols that can replace words and I learned that `Association` can be replaced by `<||>`. Not sure how it works but I feel like it's similar to `Arrow Function` in JavaScript to make code look a little more concise. Also, here I used `delayed evaluation (:=)` which I learned that this tells the program that the values for the form will be entered by the user later. Also, because of it this line of code will not have an output.
