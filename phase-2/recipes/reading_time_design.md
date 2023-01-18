# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can manage my time  
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_time = calculate_reading_time(text)

text: a string containing multiple words
reading_time: an integer representing minutes
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
calculate_reading_time("") => 0
calculate_reading_time("hello") => 1
calculate_reading_time(200_WORDS) => 1
calculate_reading_time(201_WORDS) => 2
calculate_reading_time(950_WORDS) => 5
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._