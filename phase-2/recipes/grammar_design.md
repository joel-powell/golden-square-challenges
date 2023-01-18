# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can improve my grammar  
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
is_correct = check_grammar(text)

text: a string containing words
is_correct: a boolean resulting from the state of the grammar
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
check_grammar("") throws an error
check_grammar(nil) throws an error
check_grammar("hello") => false
check_grammar("Hello.") => true
check_grammar("Hello world!") => true
check_grammar("this is a lowercase sentence.") => false
check_grammar("This is a question?") => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._