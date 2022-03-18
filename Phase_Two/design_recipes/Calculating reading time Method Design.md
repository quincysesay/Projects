Calculating reading time Method Design Recipe

1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, 
assuming that I can read 200 words a minute.

2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects.

'''ruby
reading_time = calculating_time(text)

# *text is a string of words
# *reading_time is an integer (representing minutes)

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests

Make a list of examples of what the method will take and return.

'''ruby
# 1
calculating_time("")
# => 0 √

# 2
calculating_time("ONE")
# => 0  √

# 3
calculating_time("TWO_HUNDRED_WORDS")
# => 1  √

# 4
calculating_time("THREE_HUNDRED_WORDS")
# => 2  √

# 5
calculating_time("FOUR_HUNDRED_WORDS")
# => 2 √

# 6
calculating_time("FIVE_THOUSAND_WORDS")
# => 25 √

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

