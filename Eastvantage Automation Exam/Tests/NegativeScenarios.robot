*** Settings ***
Library    		Selenium2Library
Resource   		../Keywords/LoginKeywords.robot
Test Setup		Open Optimy log in page
Test Teardown	Close browser

*** Test Cases ***
Verify Email is mandatory to login
	Enter password Va1idP@ssword to login
	Click login button
	Assert email in login page is missing validation

Verify Password is mandatory to login
	Enter email readyplayer.123@yahoo.com to login
	Click login button
	Assert password in login page is missing validation

Verify Email and Password is mandatory to login
	Click login button
	Assert email in login page is missing validation
	Assert password in login page is missing validation

Verify Email only accepts valid format
	Enter email !@#$%^&* to login
	Enter password Va1idP@ssword to login
	Click login button
	Assert email in login page format validation

Verify Email is mandatory to recover access
	Click lost password link
	Click recover my access button
	Assert email on recover access is missing validation

Verify Email only accepts valid format in recover access
	Click lost password link
	Enter email !@#$%^&* to recover access
	Click recover my access button
	Assert email on recover access format validation