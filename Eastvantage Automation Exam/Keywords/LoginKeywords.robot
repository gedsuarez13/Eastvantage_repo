*** Settings ***
Library    		Selenium2Library
Library         BuiltIn
Variables		../Locators/LoginElements.py
Variables		../Variables/LoginVariables.py

*** Keywords ***
Open Optimy log in page
	Open browser    ${url}	${browser}

Enter invalid format email address
	Input Text	${emailLoginField}	'asudhgqwiged'

Enter email ${email} to login
	Input Text	${emailLoginField}	${email}

Enter password ${password} to login
	Input Text	${passwordLoginField}	${password}

Enter email ${email} to recover access
	Input Text	${emailRecoverField}	${email}

Click login button
	Click button	${loginButton}

Click lost password link
	Wait Until Element Is Enabled	${lostPasswordLink}	10s	"Unable to locate Lost Password link"
	Click link	${lostPasswordLink}

Click recover my access button
	Click button	${recoverMyAccessButton}

Exit session
	Close browser

Assert email in login page is missing validation
	Wait Until Element Contains	${emailFieldValidation}	${fieldIsRequiredMessage}	5s	'Email validation is incorrect'

Assert password in login page is missing validation
	Wait Until Element Contains	${passwordFieldValidation}	${fieldIsRequiredMessage}	5s	'Password validation is incorrect'

Assert email in login page format validation
	Wait Until Element Contains	${emailFieldValidation}	${emailFormatInvalidMessage}	5s	'Email validation is incorrect'

Assert email on recover access is missing validation
	Wait Until Element Contains	${emailFieldResetValidation}	${fieldIsRequiredMessage}	5s	'Email validation is incorrect'

Assert email on recover access format validation
	Wait Until Element Contains	${emailFieldResetValidation}	${emailFormatInvalidMessage}	5s	'Email validation is incorrect'
