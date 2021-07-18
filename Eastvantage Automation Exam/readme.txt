Installation:
1. Download python installer (be sure to add path to environment variables)
2. Open command prompt
3. Execute 'pip install robotframework'
4. Pull the code from the repository
5. Copy all files in 'Eastvantage Automation Exam/Driver' folder and paste it on your python folder

Execution:
1. Open Command Line
2. Change your active directory to Eastvantage Automation Exam/Tests'
3. Execute command 'robot ./NegativeScenarios.robot'

Notes:
1. Be sure all browsers are installed in your device
2. If version of browser and browser driver is not equal, download appropriate driver here https://www.selenium.dev/downloads/

Known Issues
1. 'Verify Email is mandatory to recover access' and 'Verify Email only accepts valid format in recover access' are intermittently failing. This may be due to the padding on the top of the link.
2. If error in command line 'Failed to read descriptor from node connection: A device attached to the system is not functioning' is displayed, this is a known issue to the browser's driver (according to stackoverflow)