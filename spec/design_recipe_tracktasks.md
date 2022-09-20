1. Describe the Problem

1.1 As a user, so that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

1.2 As a user, so that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
 

2. Design the Class Interface

Include the name of the class, its methods, its parameters, return value, and side effects.

Class = TaskTracker 

Methods: 
"add(text)" -> parameter should be a string and it should add the given string to a list of tasks

"completed(text)" -> parameter should be a string and it should remove a selected string(task) from the list of tasks

"list" -> shows the list of tasks left to do

No side effects

3. Create Examples as Tests

# EXAMPLES

track_task.add("Take out trash") -> "Task added - 'Take out trash'
track_task.add("Wash car") -> "Task added - 'Wash car'

track_task.complete("Take out trash") -> "Task completed - *removed from list of tasks

track_task.list -> *shows the list of tasks



4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
