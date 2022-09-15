1. Describe the Problem

As a user

So that I can manage my time, I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

The user wants to input text and get an estimate of how long it will take them to read it.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.
calculate_reading_time(text) -> integer(tells user how many minutes needed to fully read text)

No side effects

3. Create Examples as Tests

# EXAMPLES

calculate_reading_time(text * 200) => 1
calculate_reading_time(text * 2000) => 10
calculate_reading_time("") => 0
calculate_reading_time(text * 10) => "Less than one minute!"
calculate_reading_time(nil) => error

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
