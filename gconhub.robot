*** Setting ***
Library     SeleniumLibrary


*** Variables ***
${locator_member_id}                    id=login-title
${locator_member_register_css}          css=#login-menu-list > div:nth-child(2) > div.menu-text
${locator_Register_Email}               id=email4
${locator_Register_Pass}                name=password
${locator_Register_Repass}              name=repassword
${locator_Register_Name}                name=name
${locator_Register_registerbutton}      name=register
${locator_error_message}                id=response

*** keywords ***
Open google website
	     Set Selenium Speed      1s
         Open Browser    https://www.gconhub.com/     Chrome      #options=add_experimental_option("detach", True)
         Maximize Browser Window

Click Member
	     Click Element 	${locator_member_id}

Click Register
         Click Element   ${locator_member_register_css}

Register email
         Wait Until Element Is Visible       ${locator_Register_Email}    10s
         Input text      ${locator_Register_Email}   test1234@gmail.com
Register Pass
         Input text      ${locator_Register_Pass}   1234213

Register Repass
         Input text      ${locator_Register_Repass}   234231

Register Name
         Input text      ${locator_Register_Name}   tsdfmdfef

Click Register Button

         Click Element   ${locator_Register_registerbutton}


Verify error message correctly
         ${txt}=     Get text    ${locator_error_message}
         Should Be Equal     ${txt}         รหัสไม่ตรงกัน

*** Test Cases ***
Test open
    [Documentation]    Verify error message correctly


    [Tags]      Test on SIT

	Open google website
	Click Member
    Click Register
    Register email
    Register Pass
    Register Repass
    Register Name
    Click Register Button


