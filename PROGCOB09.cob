       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      *************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = IVAN(ALURA) IVANAL
      * OBJETIVO : RECEBER PRODUTO , VALOR E CALCULAR O FRETE
      * UTILIZAR COMANDOS EVALUATE
      *> * DATA =  XX - XX - XXX
      ****************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WRK-PRODUTO PIC X(20) VALUE SPACES.
           77 WRK-UF      PIC X(02) VALUE SPACES.
           77 WRK-VALOR   PIC 9(06)V99 VALUE ZEROS.
           77 WRK-FRETE   PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO..'
           ACCEPT WRK-PRODUTO.

           DISPLAY 'VALOR'
           ACCEPT WRK-VALOR.

           DISPLAY 'ESTADO A ENTREGAR'
           ACCEPT WRK-UF.

           EVALUATE WRK-UF
            WHEN 'SP'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,05
            WHEN 'RJ'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,10
            WHEN 'MG'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,15
            WHEN OTHER
                DISPLAY 'NAO PODEMOS ENTREGAR'
            END-EVALUATE

            DISPLAY '=============='
            IF WRK-FRETE NOT EQUAL 0
            DISPLAY 'VALOR DO FRETE COM O PRODUTO' WRK-FRETE







           STOP RUN.
