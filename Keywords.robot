*** keywords ***
Open google website
         Set Selenium Speed      0.5s
         Open Browser    https://www.gconhub.com/     Chrome      options=add_experimental_option("detach", True)
         Maximize Browser Window

Click Member
         Click Element 	${locator_member_id}

Click Register
         Click Element   ${locator_member_register_css}

Click Register Button

         Click Element   ${locator_Register_registerbutton}

Verify error message correctly
         ${txt}=     Get text    ${locator_error_message}
         Should Be Equal     ${txt}        รหัสไม่ตรงกัน

Verify confirm message Register
         ${txt}=     Get text    ${locator_error_message}
         Should Contain     ${txt}         สมัครเรียบร้อย

Verify error message email
         ${txt}=     Get text     ${locator_error_message}
         Should Be Equal     ${txt}        Please insert correct email


Random Email
         ${random_number}     Generate Random String      3    584
         Input text           ${locator_Register_Email}        Tester${random_number}@gmail.com

Random Name
         ${random_name}     Generate Random String      5      ABCDE
         Input text           ${locator_Register_Name}        ${random_name}