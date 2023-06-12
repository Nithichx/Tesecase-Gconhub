*** Setting ***
Library             SeleniumLibrary
Library             String
Suite Setup         Log     Test 01
Suite Teardown      Log     Last 01
Resource            ${CURDIR}/Keywords.robot
Resource            ${CURDIR}/Variables.robot

*** Test Cases ***


Test01 Able to go to log in result success and show member details
    [Tags]      Test on SIT

    Open google website
    Click Member
    Click Register
    Wait Until Element Is Visible      ${locator_Register_Email}      10s
    Random Email
    Input Text                         ${locator_Register_Pass}       tester001
    Input Text                         ${locator_Register_Repass}     tester001
    Random Name
    Click Register Button
    Verify confirm message Register



Test02 Verify to error message password mismatch
    [Documentation]    Verify error message correctly

    [Tags]      Test on SIT

	Open google website
	Click Member
    Click Register
    Wait Until Element Is Visible       ${locator_Register_Email}      10s
    Input Text                          ${locator_Register_Email}      test1234@gmail.com
    Input Text                          ${locator_Register_Pass}       1234213
    Input Text                          ${locator_Register_Repass}     234231
    Input Text                          ${locator_Register_Name}       Test001
    Click Register Button
    Verify error message correctly


Test03 Verify to error message email
    [Tags]      Test on SIT

    Open google website
    Click Member
    Click Register
    Wait Until Element Is Visible       ${locator_Register_Email}      10s
    Input Text                          ${locator_Register_Email}      Nameone
    Input Text                          ${locator_Register_Pass}       1234213
    Input Text                          ${locator_Register_Repass}     1234213
    Input Text                          ${locator_Register_Name}       Name002
    Click Register Button
    Verify error message email



















