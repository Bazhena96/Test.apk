*** Settings ***
Library  AppiumLibrary
*** Keywords ***
Open Application
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
Verify The Note Contain
    [Arguments]  ${text}
    Wait Until Page Contains  ${text}
Save A New Note
    [Arguments]  ${note}
    Input Note  ${note}
    Click Save









