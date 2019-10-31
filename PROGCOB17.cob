       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      *************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = IVAN(ALURA) IVANAL
      * OBJETIVO : RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEL TIPO TABELA - REDEFINES
      *> * DATA =  XX - XX - XXX
      ****************************


       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(09) VALUE 'JAN'.
           02 FILLER PIC X(09) VALUE 'FEV'.
           02 FILLER PIC X(09) VALUE 'MAR'.
           02 FILLER PIC X(09) VALUE 'ABR'.
           02 FILLER PIC X(09) VALUE 'MAI'.
           02 FILLER PIC X(09) VALUE 'JUN'.
           02 FILLER PIC X(09) VALUE 'JUL'.
           02 FILLER PIC X(09) VALUE 'AGO'.
           02 FILLER PIC X(09) VALUE 'SET'.
           02 FILLER PIC X(09) VALUE 'OUT'.
           02 FILLER PIC X(09) VALUE 'NOV'.
           02 FILLER PIC X(09) VALUE 'DEZ'.
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(03) OCCURS 12 TIMES.

       01 DATASYS.
           02 ANOSYS PIC 9(04) VALUE ZEROS.
           02 MESSYS PIC 9(02) VALUE ZEROS.
           02 DIASYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT DATASYS FROM DATE YYYYMMDD.

           DISPLAY ' DATA ' DIASYS ' DE ' WRK-MES(MESSYS) 'DE ' ANOSYS.
           STOP RUN.