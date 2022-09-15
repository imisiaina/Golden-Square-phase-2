1. Describe the Problem

As a user, so that I can improve my grammar:
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.
 

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.
grammar_check -> parameter should be a string and it should return true if the text starts with a capital letter and end with a punctuation mark.

No side effects

3. Create Examples as Tests

# EXAMPLES

grammar_check("Hey this is a sentence.") => "Correct Grammar"
grammar_check("Hey this is a sentence") => "No punctuation"
grammar_check("hey this is a sentence.") => "No capital letter!"
grammar_check("hey this is a sentence") => "No capital letter and no punctuation!"


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
