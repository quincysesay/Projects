Grammar Method Design Recipe

1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital 
letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects.

'''ruby
is_right = check_grammar(text)

# *text is a string of words
# *is_right is a boolean depending on whether it checks out

(# The method doesn't print anything or have any other side-effects)


3. Create Examples as Tests

Make a list of examples of what the method will take and return.

'''ruby
# 1
check_grammar("")
# fail "Not a sentence." √

# 2
check_grammar("Hello there, It is me.")
# => true √

# 3
check_grammar("Hello there, It is me")
# => false √

# 4
check_grammar("hello there, It is me.")
# => false √

# 5
check_grammar("hello there, It is me.")
# => false √

# 6
check_grammar("hello there, It is me")
# => false √

# 7
check_grammar("HELLO there, It is me.")
# => true √

# 8
check_grammar("Hello there, It is me!")
# => true √

# 9
check_grammar("Hello there, It is me?")
# => true √

# 10
check_grammar("Hello there, It is me,")
# => false √

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

