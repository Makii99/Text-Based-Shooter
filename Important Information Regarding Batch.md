Hello! I, Mike15678, will explain some important things you need to know when programming in Batch.

Let's get started, shall we?

# Spaces in user input

The following line is only an example, yet **incorrect**, in terms of wanting a user to respond with a space:

`if %inputHM1% equ Haunted Mansion goto HM1`

Instead, you would want to write it as:

`if "%inputHM1%" equ "Haunted Mansion" goto HM1`

Take note how there are quotation marks. That allows the user to write there response with spaces.

# Case-Sensitive words in user input

The following line is only an example, yet shows how to allow a user to respond without needing to worry about case-sensitivity:

`if /I %input1% equ Waterfalls goto WF1`

See how there's a `/I` command? That command basically makes the user's input not case-sensitive anymore, making your life easier.
