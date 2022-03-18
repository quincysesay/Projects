                                     Class Design Recipe

1. Describe the Problem

A) As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

B) As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

--ruby

class TodoList
  def initializer
  end

  def add(task) # task is a string representing a entry
    # returns nothing
  end

  def list
    # returns a lsit of the tasks added as string
    # except the completed ones
  end

  def completed
    # returns nothing
    # fails if the task doesn't exists
  end

end

3. Create Examples as Tests
 
 --ruby

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("hoover the living room")
todo_list.list # => ["hoover the living room"]

# 3
todo_list = TodoList.new
todo_list.add("make the bed")
todo_list.add("hoover the living room")
todo_list.add("bake your cake")
todo_list.list # => [ "make the bed","hoover the living room","bake your cake" ]

# 4
todo_list = TodoList.new
todo_list.add("make the bed")
todo_list.add("hoover the living room")
todo_list.add("bake your cake")
todo_list.complete("bake your cake")
todo_list.list # => [ "make the bed","hoover the living room"]

# 5
todo_list = TodoList.new
todo_list.add("make the bed")
todo_list.add("hoover the living room")
todo_list.complete("do the laundry") # => fails "No such Entry(Task)."



4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

