**ENIGMA**

**Self-Assessment**

**Functionality -** 3: The encrypt/decrypt methods, along whith the command line interface, are fully functional.

**Object Oriented Programming -** 3: Project classes are compact and serve limited functions. The Enigma class generates a random five-digit key and the current date in DDMMYY format. The ShiftMaker class makes the A, B, C, and D shifts using the key, date and message provided by Enigma, and returns an encrypted or decrypted message. Enigma then returns a hash containg the respective encrypted or decrypted message, along with the key and date used.

**Ruby Conventions and Mechanics -** 2: This could have been better. There are two very simlilar, fairly large methods within ShiftMaker class that could have been refactored with an operator/symbol variable. 

**Test Driven Development -**  3: All method tests pass; SimlpleCov reports 96% LOC covered; stubs used for Date.today method.

**Version Control -** 3: Tests were created and committed before any piece of functional class code was added and commited; there are at least five pull requests with clearly related functionality and ample explanation for that functionality, testing status, and next steps foward.



