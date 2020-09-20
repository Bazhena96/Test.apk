*** Settings ***
Documentation  The application is a simple notepad in which you can write one entry. There is an input field and a "Save" button. There are no restrictions on the entered characters. Each new entry overwrites the previous value. The saved information is displayed below the input field. The application must store the left record.
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Verify that the text "text to check" is correctly saved.
    Load Application
    Save A New Note  "text to check"
    Verify The Note Contain  "text to check"
    Close Application
    Load Application
    Verify The Note Contain  "text to check"
Verify that text a large number of characters is correctly overwrote.
    Load Application
    Save A New Note   Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.The Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.
    Verify The Note Contain  Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.The Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.
    Save A New Note   The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.
    Verify The Note Contain  The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.
    Close Application
    Load Application
    Verify The Note Contain  The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.
Verify that the text "check a new text" is correctly overwrote to "check overwrote".
    Load Application
    Save A New Note   "check a new text"
    Verify The Note Contain   "check a new text"
    Save A New Note   "check overwrote"
    Verify The Note Contain  "check overwrote"
    Close Application
    Load Application
    Verify The Note Contain  "check overwrote"