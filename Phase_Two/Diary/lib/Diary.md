Multi-Class Planned Design Recipe

1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary # => use the check_todo from previous exercises.

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System

┌─────────────────────────┐
│    Task                 │
├─────────────────────────┤
│- Initializes with diary ├─────────────┐
│- Checks for keyword todo│             │
│                         │             │
└─────────────────────────┘             │
                                        │
 ┌────────────────────────┐             ▼
 │      DigitExtract      │           ┌───────────────────────┐         ┌──────────────────┐
 ├────────────────────────┘           │        Diary          │         │   DiaryEntry     │
 │ - Initializes with diary           ├───────────────────────┤         ├──────────────────┤
 │ - extracts numbers     ┌─────────► │   - add(Entry)        │         │   - title        │
 │                        │           │   - entries           ├──────►  │   - content      │
 └────────────────────────┘           │                       │         │                  │
                                      │                       │         │                  │
                                      │                       │         │                  │
 ┌────────────────────────┐           └───────────────────────┘         └──────────────────┘
 │       DiaryReader      │             ▲
 ├────────────────────────┤             │
 │-Initializes with wpm & │             │
 │ diary                  ├─────────────┘
 │-find_Readable(time)    │
 └────────────────────────┘


class Diary

  def add(entry) # entry is an instance of DiaryEntry
  end

  def entries
    #returns a list of DiaryEntry
  end

end

class DiaryEntry
  def initialize(title, contents) # both are strings
  end

  def title
    #returns title as a string
  end

  def contents
    #returns contents as a string
  end
end

class DigitExtract
  def initialize(diary) # diary is an instance of Diary
  end

  def extract_digits
    #returns a list of phone numbers as string, gathered across 
    #all diary entries
  end
end

class DiaryReader
  def initialize(wpm, diary)
    # wpm is a number for number of words the reader can read
    # in a minute.
    # diary is an instance of Diary
  end

  def find_readable(time)
    #returns an instance of DiaryEntry, that is equal to the entry with
    # the longest content still readable within the time (wpm) specified earlier
  end
end

class Task
  def initialize(diary) # diary is an instance of diary
    # returns a list of todo from diary content.
  end

  def check_todo
    #returns diary content with todo keyword as a string
  end

end


3. Create Examples as Integration Tests

--ruby

# 1 √
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my content")
entry_2 = DiaryEntry.new("my title two", "my content two")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.entries).to eq [entry_1, entry_2]


# 2 exactly
diary = Diary.new
reader = DiaryReader.new(2, diary)
enrty_1 = DiaryEntry.new("my title 1", "one ")
enrty_2 = DiaryEntry.new("my title 2", "one two")
enrty_3 = DiaryEntry.new("my title 3", "one two three")
enrty_4 = DiaryEntry.new("my title 4", "one two three four")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
expect(reader.find_readable(2)).to eq entry_4

# 2.1 nearest
diary = Diary.new
reader = DiaryReader.new(2, diary)
enrty_1 = DiaryEntry.new("my title 1", "one ")
enrty_2 = DiaryEntry.new("my title 2", "one two")
enrty_3 = DiaryEntry.new("my title 3", "one two three")
enrty_4 = DiaryEntry.new("my title 4", "one two three four five")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
expect(reader.find_readable(2)).to eq entry_3

# 2.2 not readable
diary = Diary.new
reader = DiaryReader.new(2, diary)
enrty_4 = DiaryEntry.new("my title 4", "one two three four")
diary.add(entry_4)
expect(reader.find_readable(2)).to eq nil

# 2.3 zero entry
diary = Diary.new
reader = DiaryReader.new(2, diary)
expect(reader.find_readable(2)).to eq nil

# 2.4 wpm invalid
diary = Diary.new
DiaryReader.new(0, diary) # should fail with "WPM cant be zero"


# 3

diary = Diary.new
task = Task.new(diary)
enrty_1 = DiaryEntry.new("my title 1", "todo, wash the dog.")
diary.add(entry_1)
Expect(task.check_todo).to eq "todo, wash the dog"

# 4

diary = Diary.new
phone_number = DigitExtract.new(diary)
diary.add(Diary.new("title1", "The contact is 07820000000"))
diary.add(Diary.new("title2", "Here are the contacts 07820000000, 07820006000, 07820080000 and 07820000000"))
expect(phone_number.extract_digits).to eq ["07820000000", "07820006000", "07820080000" ]

# 5

diary = Diary.new
task = Task.new(diary)
todo = DiaryEntry.new("my title", "todo, walk the dog")
diary.add(todo)
expect(todo.check_todo).to eq "todo, walk the dog"




4. Create Examples as Unit Tests
# entry diary


5. Implement the Behaviour

For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
