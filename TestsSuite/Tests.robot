*** Settings ***
Documentation  The application is a simple notepad in which you can write one entry. There is an input field and a "Save" button. There are no restrictions on the entered characters. Each new entry overwrites the previous value. The saved information is displayed below the input field. The application must store the left record.
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User input the text and check that text added
    Open And Load application
    Input Note  "123456789"
    Click Save
    Check The Note  "123456789"
    Close Application
Check that note saved
    Open and Load Application
    Check The Note  "123456789"
    Close Application
Check that note overwrote
    Open And Load Application
    Input Note  "little cat"
    Click Save
    Check The Note  "little cat"
    Input Note  "little dog"
    Click Save
    Close Application
    Open And Load Application
    Check The Note  "little dog"