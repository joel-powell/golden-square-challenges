# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my tasks  
> I want a program that I can add todo tasks to and see a list of them.

> As a user  
> So that I can focus on tasks to complete  
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Tasks
  def initialize
  end

  def add(task) # task is a string
    # No return value
    # Throws error if string is empty
  end
  
  def list 
    # Returns pending tasks as strings
  end

  def complete(task)
    # No return value
    # Throws error if task does not exist
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
tasks = Tasks.new
tasks.list # => []

# 2
tasks = Tasks.new
tasks.add("") # => Throws error "Task cannot be empty"

# 3
tasks = Tasks.new
tasks.add("Go to shop")
tasks.list # => ["Go to shop"]

# 4
tasks = Tasks.new
tasks.add("Go to shop")
tasks.add("Clean the house")
tasks.list # => ["Go to shop", "Clean the house"]

# 5
tasks = Tasks.new
tasks.add("Go to shop")
tasks.add("Clean the house")
tasks.complete("Go to shop")
tasks.list # => ["Clean the house"]

# 6
tasks = Tasks.new
tasks.complete("Go to shop") # => Throws error "Task does not exist"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._