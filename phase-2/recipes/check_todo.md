# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my tasks  
> I want to check if a text includes the string `#TODO`.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
includes_todo = check_todo(text)

text: a string containing multiple words
includes_todo: a boolean dependant on the string containing the string `#TODO`

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
check_todo(nil) throws an error
check_todo("") => false
check_todo("#TODO") => true
check_todo("TODO") => false
check_todo("#TODO go to shop") => true
check_todo("text before #TODO text after") => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._