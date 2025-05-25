      ******************************************************************
      * Author: Vinncent Alexander Wong
      * Date: 25/05/2025
      * Purpose: Test Add or Subtract Program with COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CBL001.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  BALANCE PIC S9(10)V99 VALUE ZEROES.
       77  OPERATED-BALANCE PIC S9(10)V99.
       77  DISPLAY-BALANCE PIC Z,ZZZ,ZZZ.99.

       77  OPERATION PIC X(10).
       77  CONTINUE-OPERATION PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM SHOW-CONSOLE
               UNTIL CONTINUE-OPERATION = 'N'.
           STOP RUN.

       SHOW-CONSOLE.
           DISPLAY 'What operation do you want to do?: '.
           ACCEPT OPERATION.
           IF OPERATION = 'ADD'
               PERFORM ADD-BALANCE
           ELSE
               IF OPERATION = 'SUBTRACT'
                   PERFORM SUBTRACT-BALANCE
               END-IF
           END-IF.
           DISPLAY 'Continue?(Y/N): '.
           ACCEPT CONTINUE-OPERATION
           .

       ADD-BALANCE.
           DISPLAY 'How many balance you want to add?: '.
           ACCEPT OPERATED-BALANCE.
           COMPUTE BALANCE = BALANCE + OPERATED-BALANCE.
           MOVE BALANCE TO DISPLAY-BALANCE.
           DISPLAY 'Success add your balance. Current Balance: '
               DISPLAY-BALANCE.

       SUBTRACT-BALANCE.
           DISPLAY 'How many balance you want to subtract?: '.
           ACCEPT OPERATED-BALANCE.
           COMPUTE BALANCE = BALANCE - OPERATED-BALANCE
           MOVE BALANCE TO DISPLAY-BALANCE.
           DISPLAY 'Success subtract your balance. Current Balance: '
               DISPLAY-BALANCE.
