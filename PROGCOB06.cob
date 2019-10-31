       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = IVAN(ALURA) IVANAL
      * OBJETIVO : OPERADORES ARITIMETICOS
      *> * DATA =  XX - XX - XXX
      ****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1      PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2      PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL     PIC S9(03) VALUE ZEROS.
       77 WRK-RESUL-ED  PIC -ZZ9 VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '============================='
           DISPLAY 'NUMERO1..' WRK-NUM1.
           DISPLAY 'NUMERO2..' WRK-NUM2.
      **********SUBTRACAO********
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO .....' WRK-RESUL.
           DISPLAY 'SUBTRACAO .....' WRK-RESUL.ED.

           STOP RUN.
