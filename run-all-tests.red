Red [
    Title: "Run all tests"
    Description: "Will detect and execute all "****-tests.red" tests under /tests directory"
    Author: "Mateusz Palichleb"
    File: %run-all-tests.red
]

; Temporary solution for running all tests at once,
; until RedUnit will have this functionality in further releases

tester: do %src/tester.red
files: read %tests/
all-tests: context []

foreach file files [	
    if find file "-tests.red" [
        test-file-path: rejoin ["tests/" file]
        ;print rejoin [ "^/>> " test-file-path "^/"]

        test-file: to file! test-file-path

        tests: do test-file
        all-tests: make all-tests tests
    ]
]

change-dir %tests
tester/run all-tests
change-dir %..
