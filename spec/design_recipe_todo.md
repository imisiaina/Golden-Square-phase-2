1. Describe the Problem

As a user so that I can keep track of my tasks I want to check if a text includes the string #TODO



2. Design the Method Signature

Method Name = todo_check
-> parameter should be a string and it should return true if the string includes "#TODO" and false if the string does not

No side effects

3. Create Examples as Tests

# EXAMPLES
Only 2 examples:
todo_check("Today my list tells me #TODO this task") => true

todo_check("Today my list tells me this task") => false


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
