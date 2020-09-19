*** Settings ***
Documentation  The application is a simple notepad in which you can write one entry. There is an input field and a "Save" button. There are no restrictions on the entered characters. Each new entry overwrites the previous value. The saved information is displayed below the input field. The application must store the left record.
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User input the text and check that text added
    Open And Save Note  1234566789
    Check Note And Close  1234566789
Check that note saved
    Open And Load Application
    Check Note And Close  1234566789
Check that note overwrote
    Open And Save Note  "little cat"
    Check The Note  "little cat"
    Save Note  "little dog"
    Open And Load Application
    Check Note And Close  "little dog"
Enter text with a large number of characters
    Open And Save Note  Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.The Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.
    Check Note And Close  Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.The Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.
    Open And Save Note  Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.The Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.
    Save Note  The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.
    Check Note And Close  The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.

