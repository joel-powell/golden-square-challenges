# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my music listening  
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class ListeningHistory
  def initialize
  end

  def add(track) # track is a string
    # No return value
    # Throws error if string is empty
  end

  def list
    # Returns array of all stored tracks as strings
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
listening_history = ListeningHistory.new
listening_history.list # => []

# 2
listening_history = ListeningHistory.new
listening_history.add("") # raises error "Track name cannot be empty"

# 3
listening_history = ListeningHistory.new
listening_history.add("Track_1")
listening_history.list # => ["Track_1"]

# 4
listening_history = ListeningHistory.new
listening_history.add("Track_1")
listening_history.add("Track_2")
listening_history.list # => ["Track_1", "Track_2"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
