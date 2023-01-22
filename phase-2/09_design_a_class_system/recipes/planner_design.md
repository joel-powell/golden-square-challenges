# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can record my experiences  
> I want to keep a regular diary

> As a user  
> So that I can reflect on my experiences  
> I want to read my past diary entries

> As a user  
> So that I can reflect on my experiences in my busy day  
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user  
> So that I can keep track of my tasks  
> I want to keep a todo list along with my diary

> As a user  
> So that I can keep track of my contacts  
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # entry gets added to the diary
    # returns nothing
  end

  def all
    # returns array of diary entry objects
  end
  
  def contacts
    # returns array of unique phone numbers from all diary entries
  end

  def longest_readable_entry(wpm, minutes)
    # returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

class DiaryEntry
  def initialize(title, contents) # title and contents are both strings
  end
  
  attr_reader :title,:contents,:word_count,:phone_numbers
end

class TodoList
  def initialize
  end
  
  def add(todo) # todo is an instance of Todo
    # todo gets added to todo list
    # returns nothing
  end
  
  def all
    # returns array of all todo objects
  end
end

class Todo
  def initialize(task) # task is a string
  end
  
  attr_reader :task
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# DIARY_INTEGRATION

# returns all entries
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "contents_1")
entry_2 = DiaryEntry.new("title_2", "contents_2")
diary.add(entry_1)
diary.add(entry_2)
diary.all # => [entry_1, entry_2]

# returns unique contacts
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "bob's phone number is 07245382629")
entry_2 = DiaryEntry.new("title_2", "james changed his phone number from 07399238917 to 07263927927")
entry_3 = DiaryEntry.new("title_3", "remember to call bob (07245382629) tomorrow")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.contacts # => ["07245382629","07399238917","07263927927"]

# returns longest readable entry
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "some contents")
entry_2 = DiaryEntry.new("title_2", "some more contents")
entry_3 = DiaryEntry.new("title_3", "even more contents than before")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.longest_readable_entry(1, 4) # => entry_2

# TODO INTEGRATION

# returns all todos
todo_list = TodoList.new
todo_1 = Todo.new("Go to shop")
todo_2 = Todo.new("Empty bins")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.all # => [todo_1, todo_2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# as needed
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._