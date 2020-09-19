*** Settings ***
Library  AppiumLibrary
*** Keywords ***
Open And Load Application
    Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=10.0  deviceName=Pixel 3  pkg=com.example.testapp
    Set Appium Timeout  5
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Input Note
    [Arguments]  ${text}
    Wait And Click  id=com.example.testapp:id/etResult
    Input Text  id=com.example.testapp:id/etResult  ${text}
Click Save
    Wait And Click  id=com.example.testapp:id/btnSave
Check The Note
    [Arguments]  ${text}
    Wait Until Page Contains  ${text}
Save Note
    [Arguments]  ${note}
    Input Note  ${note}
    Click Save
Check Note And Close
    [Arguments]  ${note}
    Check The Note  ${note}
    Close Application
Open And Save Note
    [Arguments]  ${note}
    Open And Load Application
    Save Note  ${note}







