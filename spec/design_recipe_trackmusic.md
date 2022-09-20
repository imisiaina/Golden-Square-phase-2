1. Describe the Problem
As a user, so that i can keep track of my music listening i want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

Class: TrackMusic
Methods: 
def add(text) - > parameter should be a string and it should add the given string to a list of music
def list -> should return a list of music the user has added

No side effects

3. Create Examples as Tests

# EXAMPLES
track.add("Finesse - Buju") -> "Finesse - Buju"
track.add("Wasted - Digga D") -> "Wasted - Digga D"
track.list -> "Finesse - Buju, Wasted - Digga D"


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
