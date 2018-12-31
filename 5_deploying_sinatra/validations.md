# When to use Validations

- purpose of previous assignment isnt how to write bulletproof input validation, but demo basic pattern used to handle invalid inputs in web apps
- projects we build often oversimplified

- don't try to write code that tries to respond meaningfully to every possible bad input.  Consider how program might recieve that bad input.  If bad data comes from the form that the user filled out incorrectly, you should probably handle that error.  
- You have little control over what user types in a form so you can expect to get bad data.  Program should handle the error and provide a way for the user to recover, such as displaying the form again with an appropriate message.

- On the other hand, you don't want to check for something that can only happen if theres a bug somewhere in the code.  If theres a bug, you should find and fix it, not handle it as an error.  Trying to handle it in code can make debugging the issue more difficult.

- Also important to consider whether specific error message is useful- write messages so they make sense to the user not the programmer.  Could also accidentally provide useful info to a malicious user, as error can expose certain details of your apps implementation.  Best way to avoid leaking info is to repsond with vague error messages when input doesn't resemble something an innocent user might enter.  Can even ignore input entirely in some cases.