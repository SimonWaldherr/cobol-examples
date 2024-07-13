       IDENTIFICATION DIVISION.
       PROGRAM-ID. Factorial.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N          PIC 9(2) VALUE 5.
       01 I          PIC 9(2).
       01 FACT       PIC 9(10) VALUE 1.
       PROCEDURE DIVISION.
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
           MULTIPLY I BY FACT GIVING FACT
       END-PERFORM.
       DISPLAY 'Factorial: ' FACT.
       STOP RUN.
