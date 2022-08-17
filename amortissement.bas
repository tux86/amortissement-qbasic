
SCREEN 0
REM ' BEGIN OF LOOP
REM ******** Programme calculs d'amortissements 1.4 2eme edition ********
REM Referance KJH1-1745AL
CLEAR
LET OO = 1
PLAY ON
   music$ = "MBo2L8EMBo3L8E"
   PLAY music$
T$ = "()"
LET xp$ = DATE$
LET X$ = RIGHT$(xp$, 4)
LET O = VAL(X$)
LET V1 = 999999999
LET K1 = 1875
LET K2 = O
LET N8 = 200
1 COLOR 7, 1
IF GY = 1 THEN 855
CLS
COLOR 15, 12
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ   PROGRAMME : Calculs d'amortissements [Version 1.40]  ..2Eme Edition.       บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   CREATION PAR : The software ALKSOFT. Ecrit en BASIC par KARRAY Walid.      บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออน"
PRINT "บ   EXECUTION :   le ["; DATE$; "] … ["; TIME$; "]               บ REF : AL127     บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออผ"



REM 'Programmation des touches des fonctions
KEY 1, "*" + CHR$(13)
KEY 2, "" + CHR$(13)
KEY 3, "+" + CHR$(13)
KEY 4, "X" + CHR$(13)
KEY 5, "." + CHR$(13)
KEY 6, "Q" + CHR$(13)
KEY 7, "-" + CHR$(13)
COLOR 0, 15
PRINT "ฑF1:AIDE.ฑF2:PRECEDENT.ฑF3:MODIFIER.ฑF4:INFO.ฑF5:NOUVEAU.ฑF6:QUITTER.ฑF7:OUVRIRฑ "
COLOR 15, 1
LET H = 0
IF UO = 0 THEN 5
5 REM
IF K = 0 THEN 6
GOTO 10
6 LET K = -1
10 LOCATE 9, 1
COLOR 15, 1
PRINT "ฺฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT "ณ No. ณ DESIGNATIONS.                                     ณ VALEURS.           ณ"
COLOR 14, 1
LOCATE 10, 3
   PRINT "No."
LOCATE 10, 8
   PRINT "DESIGNATIONS."
LOCATE 10, 60
PRINT "VALEURS."
COLOR 15, 1
LOCATE 10, 60
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
PRINT "ณ 01. ณ Valeur de l'objet au dbut de chaque anne :      ณ....................ณ"
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
PRINT "ณ 02. ณ Anne d'achat du produit :                        ณ....................ณ"
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
PRINT "ณ 03. ณ Dure de vie [Du produit] par ans.                ณ....................ณ"
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
PRINT "ณ 04. ณ Monnaie :                                         ณ....................ณ"
PRINT "รฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
PRINT "ณ                                                                              ณ"
PRINT "ณ                                                                              ณ"
PRINT "ณ                                                                              ณ"
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 14, 1
LOCATE 20, 3
PRINT "Pour mieux comprendre … utiliser ce logiciel appuiez [F1], comme vous pouvez"
LOCATE 21, 3
PRINT "aussi employer d'autres options en barre menue en haut."
COLOR 15, 15
LOCATE 22, 55
PRINT " VALIDEZ POUR CONTINUER."

COLOR 10, 1
LOCATE 12, 60
PRINT V; T$
LOCATE 14, 60
PRINT K + 1
LOCATE 16, 60
PRINT N; " ans"
LOCATE 18, 60
PRINT T$

IF DF = 1 THEN 30
IF DF = 2 THEN 40
IF DF = 3 THEN 42

 
IF UO = 1 THEN 30
IF UO = 2 THEN 40
IF UO = 3 THEN 42
IF UO = 4 THEN 41
20 REM -------------------- 1er qw ------------------------
COLOR 15, 1
LOCATE 12, 3
   PRINT "[1]"
LOCATE 12, 8
   PRINT " Valeur de l'objet au dbut de chaque anne :      "
LOCATE 12, 60
PRINT "...................."
IF OO = 1 THEN 4500
LOCATE 12, 60
INPUT " ", V$
 LET UO = 0

IF V$ = "Q" THEN 6950
IF V$ = "" THEN 1
IF V$ = "X" THEN 6850
IF V$ = "*" THEN 7000
IF V$ = "." THEN 7050
IF V$ = "+" THEN 7200
LET V = VAL(V$)


LET jj = V
             IF V > V1 THEN 3010
             IF V <= 0 THEN 3005
LET DF = 1

GOTO 1
30  REM ---------------- 2 qw --------------------
LOCATE 14, 3
COLOR 15, 1
   PRINT "[2]"
LOCATE 14, 8
PRINT " Anne d'achat du produit : "
LOCATE 14, 60
PRINT "...................."
IF OO = 1 THEN 4500
LOCATE 14, 60
INPUT " ", K$
LET UO = 1
 IF K$ = "Q" THEN 6950
IF K$ = "" THEN 220
IF K$ = "X" THEN 6850
IF K$ = "*" THEN 7000
IF K$ = "." THEN 7050
IF K$ = "+" THEN 7200
LET K = VAL(K$)
IF K > K2 THEN 3020
32 IF K < K1 THEN 3022
LET K = K - 1
LET DF = 2
GOTO 1
40  REM--------------------- 3 eme qw ----------------------
COLOR 15, 1
LOCATE 16, 3
   PRINT "[3]"
LOCATE 16, 8
PRINT " Dure de vie [Du produit] par ans.    "
LOCATE 16, 60
PRINT "...................."
IF OO = 1 THEN 4500
LOCATE 16, 61
INPUT "", N$
LET UO = 2
IF N$ = "Q" THEN 6950
IF N$ = "" THEN 225
IF N$ = "X" THEN 6850
IF N$ = "*" THEN 7000
IF N$ = "." THEN 7050
IF N$ = "+" THEN 7200
LET N = VAL(N$)
IF N > N8 THEN 3030
IF N < 2 THEN 3032
LET DF = 3
GOTO 1
REM ------------------
41 COLOR 0, 15
LOCATE 22, 55
PRINT " VALIDEZ POUR CONTINUER."
DO
LOOP UNTIL INKEY$ = ""
GOTO 43
REM ------------------
42  REM--------------------- 4 eme qw ----------------------
LOCATE 18, 3
COLOR 15, 1
   PRINT "[4]"
LOCATE 18, 8
   PRINT " Monnaie :                                         "
LOCATE 18, 60
PRINT "...................."
IF OO = 1 THEN 4500
LOCATE 18, 61
INPUT "", T$
LET UO = 3
LET DF = 4
IF T$ = "X" THEN 6850
IF T$ = "Q" THEN 6950
IF T$ = "" THEN 40
IF T$ = "*" THEN 7000
IF T$ = "." THEN 7050
IF T$ = "+" THEN 7200

REM -------------------------------
IF N > N8 THEN 40
IF N < 2 THEN 40
LET UO = 4
GOTO 1
43 COLOR 15, 1
LET S = V
LET W = N
44 REM
  COLOR 0, 11
   LOCATE 8, 20
   PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
   LOCATE 9, 20
   PRINT "ณ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ  ณ"
   LOCATE 10, 20
   PRINT "ณ ณ    *****  AMORTISSEMENTS  *****     ณ  ณ"
   LOCATE 11, 20
   PRINT "ณ ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู  ณ"
   LOCATE 12, 20
   PRINT "ณฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟณ"
   LOCATE 13, 20
   PRINT "ณณ 1-[Amortissement linaire.]            ณณ"
   LOCATE 14, 20
   PRINT "ณณ 2-[Amortissement Dgressif.]           ณณ"
   LOCATE 15, 20
   PRINT "ณณ 3-[Amortissement par la somme des ans.]ณณ"
   LOCATE 16, 20
   PRINT "ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูณ"
   LOCATE 17, 20
   PRINT "ณ AMORTISSEMENT [1-2-3/F6 Quitter] ?       ณ"
   LOCATE 18, 20
   PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
   COLOR 0, 0
   LOCATE 9, 64
   PRINT "  "
   LOCATE 10, 64
   PRINT "  "
   LOCATE 11, 64
   PRINT "  "
   LOCATE 12, 64
   PRINT "  "
   LOCATE 13, 64
   PRINT "  "
   LOCATE 14, 64
   PRINT "  "
   LOCATE 15, 64
   PRINT "  "
   LOCATE 16, 64
   PRINT "  "
   LOCATE 17, 64
   PRINT "  "
   LOCATE 18, 64
   PRINT "  "
   LOCATE 19, 64
   PRINT "  "
   LOCATE 19, 21
   PRINT "                                            "
 
   COLOR 0, 6
   LOCATE 17, 54
   INPUT " "; I$
  COLOR 15, 1
LET T$ = LEFT$(T$, 4)
LET R = V
LET UO = 3
LET DF = 4
 IF I$ = "X" THEN 6850
 IF I$ = "Q" THEN 6950
 IF I$ = "" THEN 1
 IF I$ = "*" THEN 7000
 IF I$ = "." THEN 7050
 IF I$ = "+" THEN 7200
          
           IF VAL(I$) = 1 THEN 100
           IF VAL(I$) = 2 THEN 120
           IF VAL(I$) = 3 THEN 140
99 GOTO 43
100  '
105 REM  [ Amortissement linaire.]
110 GOTO 150
120 '
125 REM  [ Amortissement dgressif.]
 COLOR 7, 1
130   GOTO 150
140 '
145 REM  [ Mthode de la somme des ans.]
150 REM
LET L = 0
LET J = 0
LET H = 1
180 LET D1 = V / N
190 LET F1 = V / (N * (N + 1) / 2)
195 GOTO 2060
200 LET J = J + 1
LET L = L + 1
LET K = K + 1
210            IF I = 1 THEN 310
211            IF I = 2 THEN 410
212            IF I = 3 THEN 510
215 GOTO 310
220 LET DF = 0: GOTO 20
225 LET DF = 0: GOTO 30
230 LET DF = 0: GOTO 40
235 LET DF = 0: GOTO 42
END
310 LET V = V - D1
315            IF J = 1 THEN 960
IF V < 0 THEN 2150
IF J < 10 THEN 1010
IF J > 9 THEN 1011
320 PRINT " "; J; " Eme Anne ["; K; "]"; sp$; " "; CSNG(D1); " "; T$, "      "; CSNG(V); " "; T$
IF L = 9 THEN 2150
330 IF J < N THEN 200
340 GOTO 3050
410 LET D2 = (2 / N) * V
420 LET V = V - D2
425            IF J = 1 THEN 975
IF V < 0 THEN 2150
IF J < 10 THEN 1010
IF J > 9 THEN 1011
430 PRINT " "; J; " Eme Anne ["; K; "]"; sp$; " "; CSNG(D2); " "; T$, "      "; CSNG(V); " "; T$
IF L = 9 THEN 2150
440         IF J < N THEN 200
450 GOTO 3050
510 LET F2 = N - J + 1
520 LET D3 = F1 * F2
530 LET V = V - D3
            IF J = 1 THEN 985
IF V < 0 THEN 2150
IF J < 10 THEN 1010
IF J > 9 THEN 1011
540 PRINT " "; J; " Eme Anne ["; K; "]"; sp$; " "; CSNG(D3); " "; T$, "      "; CSNG(V); " "; T$
IF L = 9 THEN 2150
550          IF J < N THEN 200
560 GOTO 3050
610 GOTO 5
680 LOCATE 20, 1
     COLOR 14, 1
     PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
     PRINT "ณ Appuiez [+] pour quitter . [S.V.P.]                                          ณ"
     PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
     PRINT "                                                 Pas de Tableau(x) Restant(s)  "
    DO
   LOOP UNTIL INKEY$ = "+"
684 REM *********
LOCATE 22, 70
COLOR 15, 12
 PLAY ON
 music$ = "MBo0L8ED"
PLAY music$
LOCATE 10, 15
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 15
PRINT "ณ  Utiliser un autre type d'amortissement  ณ"
LOCATE 12, 15
PRINT "ณ                  (O/N) ?                  ณ"
LOCATE 13, 15
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"

   COLOR 0, 0
   LOCATE 11, 60
   PRINT "  "
   LOCATE 12, 60
   PRINT "  "
   LOCATE 13, 60
   PRINT "  "
   LOCATE 14, 60
   PRINT "  "
   LOCATE 14, 16
   PRINT "                                             "
685 IF INKEY$ = "O" OR INKEY$ = "o" THEN 686
    IF INKEY$ = "N" OR INKEY$ = "n" THEN 700
GOTO 685
686 LET V = S
LET H = 0
LET N = W
LET K = K - J
GOTO 43
700 COLOR 0, 2
705 REM
COLOR 15, 14
LOCATE 11, 30
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 12, 30
PRINT "ณ Imprimer les resultats ณ"
LOCATE 13, 30
PRINT "ณ    (O/N) ?              ณ"
LOCATE 14, 30
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
LOCATE 12, 57
PRINT "  "
LOCATE 13, 57
PRINT "  "
LOCATE 14, 57
PRINT "  "
LOCATE 15, 31
PRINT "                            "

709 IF INKEY$ = "o" OR INKEY$ = "O" THEN 5500
    IF INKEY$ = "n" OR INKEY$ = "N" THEN 6910
710 GOTO 709
750 REM
780 REM
776  REM
LET S = 0
LET a$ = " A Bient“t .. GOOD BYE !"
COLOR 0, 10
LOCATE 12, 20
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 13, 20
PRINT "ณ                            ณ"
LOCATE 14, 20
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
LOCATE 13, 50
PRINT "  "
LOCATE 14, 50
PRINT "  "
LOCATE 15, 50
PRINT "  "
LOCATE 15, 21
PRINT "                              "
785 LET S = 0
LOCATE 13, 22
PRINT LEFT$(a$, G); "Û"
    FOR I% = 1000 TO 1000 STEP 100
    SOUND I%, I% / 3000
    NEXT I%
COLOR 0, 10
LET G = G + 1
790 LET S = S + 1
IF S = 1500 THEN 785
IF G = 30 THEN 795

GOTO 790
795 GOTO 8000
800 GOTO 780
850  GOTO 8000
855 CLEAR
GOTO 1
960 PRINT " "; J; " Ere Anne ["; K; "]"; sp$; "  "; CSNG(D1); " "; T$, "      "; CSNG(V); " "; T$

970  GOTO 330
975  PRINT " "; J; " Ere Anne ["; K; "]"; sp$; "  "; CSNG(D2); " "; T$, "      "; CSNG(V); " "; T$

980  GOTO 440
985  PRINT " "; J; " Ere Anne ["; K; "]"; sp$; "  "; CSNG(D3); " "; T$, "      "; CSNG(V); " "; T$
990  GOTO 550
1000 END
1010 LET sp$ = " "
ON I GOTO 320, 430, 540
1011 LET sp$ = ""
ON I GOTO 320, 430, 540
2010 PLAY ON
      music$ = "MBo0L8EMBo1L8EMBo0L8EMBo1L8"
      PLAY music$
CLS
PRINT ""
PRINT ""
PRINT ""
IF I = 1 THEN 2020
IF I = 2 THEN 2025
IF I = 3 THEN 2030
2020  DD$ = "  [ Amortissement linaire.] ..."
2022 GOTO 2050
2025  DD$ = "  [ Amortissement degrssif.] ..."
2027 GOTO 2050
2030  DD$ = "  [ Amortissement par la somme des ans.] ..."
2050 ON I GOTO 100, 120, 140
2055 END
2060 LET HH = N / 9
LET I = VAL(I$)
IF I = 1 THEN 2065
IF I = 2 THEN 2066
IF I = 3 THEN 2067
END
2065 AM$ = "[Amortissement linaire.]            ": GOTO 2100
2066 AM$ = "[Amortissement degrssif.]           ": GOTO 2100
2067 AM$ = "[Amortissement par la somme des ans] ": GOTO 2100
2100 CLS
COLOR 0, 3
PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป "
PRINT "บ                 PRESENTATION DES RESULTATS PAR [TABLEAU]                    บ "
PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ "
COLOR 14, 4
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT "ณ TYPE D'AMORTISSEMENT "; AM$; "                   ณ"
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
LOCATE 5, 60
COLOR 0, 6
PRINT " TABLEAU : "; H; "/"; INT(HH + 1)
COLOR 15, 1
LOCATE 6, 51
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT "ณ   ANNEE.              ณ DEPRECIATION.        ณ VALEUR FINALE.                ณ"
PRINT "รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"

GOTO 2900
2150 REM    [SI l=0]
GOTO 3050
2900 GOTO 200
3000 REM GENERATION DES ERRUEURS

3005  BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.01           ณ"
LOCATE 12, 25
PRINT "ณValeur equivalante … [0] ณ"
LOCATE 13, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 14, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 15, 26
   PRINT "                          "
LET V = 0
DO
LOOP WHILE INKEY$ = ""
GOTO 1
3010  BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.02           ณ"
LOCATE 12, 25
PRINT "ณValeur superieur … [9E9] ณ"
LOCATE 13, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 14, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 15, 26
   PRINT "                           "


LET V = 0
DO
LOOP WHILE INKEY$ = ""
GOTO 1
3020 BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.03           ณ"
LOCATE 12, 25
PRINT "ณ Date superieure …  :    ณ"
LOCATE 13, 25
PRINT "ณ ["; O; "]                ณ"
LOCATE 14, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 15, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 16, 26
   PRINT "                            "
LET K = 0
DO
LOOP WHILE INKEY$ = ""
PRINT ""
COLOR 7, 1
HP = 1
GOTO 1
3022 BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.04           ณ"
LOCATE 12, 25
PRINT "ณ Date inferieure …  :    ณ"
LOCATE 13, 25
PRINT "ณ [1875]                  ณ"
LOCATE 14, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 15, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 16, 26
   PRINT "                            "
LET K = 0
DO
LOOP WHILE INKEY$ = ""
COLOR 7, 1
HP = 1
GOTO 1
3030 BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.05           ณ"
LOCATE 12, 25
PRINT "ณ Duree de vie super-     ณ"
LOCATE 13, 25
PRINT "ณ ieure … 200 ans         ณ"
LOCATE 14, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 15, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 16, 26
   PRINT "                            "
LET N = 0
DO
LOOP WHILE INKEY$ = ""
COLOR 7, 1
HP = 2
GOTO 1
3032 BEEP
COLOR 0, 6
LOCATE 10, 25
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 25
PRINT "ณ ERREUR No.06           ณ"
LOCATE 12, 25
PRINT "ณ Duree de vie infer-     ณ"
LOCATE 13, 25
PRINT "ณ ieure … duex ans        ณ"
LOCATE 14, 25
PRINT "ณ         <O.K.>          ณ"
LOCATE 15, 25
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
   LOCATE 11, 52
   PRINT "  "
   LOCATE 12, 52
   PRINT "  "
   LOCATE 13, 52
   PRINT "  "
   LOCATE 14, 52
   PRINT "  "
   LOCATE 15, 52
   PRINT "  "
   LOCATE 16, 26
   PRINT "                            "
LET N = 0
DO
LOOP WHILE INKEY$ = ""
COLOR 7, 1
HP = 2
GOTO 1
3050 REM Tabulation
 LET L = 0
LET H = H + 1
LET PR = 9
3060 LET PR = PR + 1
LOCATE PR, 1
PRINT "ณ"
LOCATE PR, 25
PRINT "ณ"
LOCATE PR, 48
PRINT "ณ"
LOCATE PR, 80
PRINT "ณ"
IF PR = 18 THEN 3070
GOTO 3060
3070  REM  ******* FIN DU TABLEAU ***********
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
IF H > HH + 1 THEN 680
3080 LOCATE 20, 1
     COLOR 14, 1
     PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
     PRINT "ณ Appuiez [+] pour afficher le continue du tableau. [S.V.P.]                   ณ"
     PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
     PRINT "                                         ["; INT(HH + 2) - H; "] Tableau(x) Restant(s) "
    DO
   LOOP UNTIL INKEY$ = "+"
COLOR 15, 1
GOTO 2100
4500 REM Generation de la page d'acceuil
LET B$ = "ALKSOFT PRESENTE"
LET y = 0
COLOR 0, 3
LOCATE 7, 16
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 8, 16
PRINT "ณ                                              ณ"
LOCATE 9, 16
PRINT "ณ                                              ณ"
LOCATE 10, 16
PRINT "ณ PROGRAMME CALCULS D'AMORTISSEMENTS [1.40]    ณ"
LOCATE 11, 16
PRINT "ณ 2EME EDITION (C) 2001 PAR  [ ALKSOFT ]       ณ"
LOCATE 12, 16
PRINT "ณ                                              ณ"
LOCATE 13, 16
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
LOCATE 8, 64
PRINT "  "
LOCATE 9, 64
PRINT "  "
LOCATE 10, 64
PRINT "  "
LOCATE 11, 64
PRINT "  "
LOCATE 12, 64
PRINT "  "
LOCATE 13, 64
PRINT "  "
LOCATE 14, 20
PRINT "                                              "

COLOR 0, 3
4510  LET y = 0
LET T = T + 1
LOCATE 8, 20
PRINT LEFT$(B$, T); "Û"
4540 DO
LET y = y + 1
IF y = 1000 THEN 4510
IF T = 15 THEN 4550
LOOP WHILE INKEY$ = "": GOTO 4550
GOTO 4540
4550 COLOR 4, 7
LOCATE 12, 45
PRINT "< CONTINUER >"
DO
LOOP WHILE INKEY$ = ""
LET OO = 0
GOTO 1

5500 REM FENETRES DES EXRENTIONS
LOCATE 7, 6
COLOR 0, 7
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 8, 6
PRINT "ณ AMORTISSEMENT D'[UN/UNE] :                                        ณ"
LOCATE 9, 6
PRINT "รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"

5510 LOCATE 10, 6
PRINT "ณ POUR MR/Mm :                                    ณ                 ณ"
LOCATE 11, 6
PRINT "ณ                                                 ณ  [Continuer]    ณ"
LOCATE 12, 6
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
LOCATE 8, 75
PRINT "  "
LOCATE 9, 75
PRINT "  "
LOCATE 10, 75
PRINT "  "
LOCATE 11, 75
PRINT "  "
LOCATE 12, 75
PRINT "  "
LOCATE 13, 75
PRINT "  "
LOCATE 13, 7
PRINT "                                                                     "
COLOR 0, 7
LOCATE 8, 35
INPUT "", XQ$
 IF XQ$ = "Q" THEN 776
LOCATE 10, 20
INPUT "", MM$
IF MM$ = "Q" THEN 776
IF MM$ = "" THEN 5600
GOTO 6000
5600 REM
LOCATE 8, 6
PRINT "ณ AMORTISSEMENT D'[UN/UNE] :                                        ณ"
LOCATE 8, 35
INPUT "", XQ$
 IF XQ$ = "Q" THEN 776
IF XQ$ = "" THEN 5600
5610 GOTO 5510
6000 REM page d'impression
    LPRINT " AMORTISSEMENT .. ["; XQ$; "]      MR/MM ["; MM$; "]"
    LPRINT " TYPE D'AMORTISSEMENT : "; AM$
     LPRINT "LE " + DATE$ + " - " + TIME$
LET K = K - N
LET H = 0
LPRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LPRINT "ณ   ANNEE.              ณ DEPRECIATION.        ณ VALEUR FINALE.               ณ"
LPRINT "รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
 ON I GOTO 6100, 6120, 6140
6100 LET a$ = " [AMORTISSEMENT LINEAIRE]"
GOTO 6150
6120 LET S$ = " [AMORTISSEMENT DEGRESSIF]"
GOTO 6150
6140 LET D$ = " [AMORTISSEMENT PAR LA SOMME DES ANS"
6150 REM
6170 LET H = 0
     LET ki = 0
     LET LK = 5
6180 LET D5 = R / N
6190 LET F5 = R / (N * (N + 1) / 2)
6200 LET H = H + 1
    
     LET K = K + 1

6210 ON I GOTO 6300, 6400, 6500
6300 REM  ************ prmier type **********************
6310 LET R = R - D5
6320 LPRINT "ณ"; H; "["; K; "]", "      ณ    "; CSNG(D5); T$, "ณ     "; CSNG(R); T$; "ณ "
6330 IF H < N THEN 6200
LPRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
LPRINT "  ALK SOFTWARE (C) 2001.  "
GOTO 6700
6400 REM  ********** second type ************************
6410 LET D6 = (2 / N) * R
6420 LET R = R - D6
6430 LPRINT "ณ"; H; "["; K; "]", "      ณ    "; CSNG(D6); T$, "ณ     "; CSNG(R); T$; "ณ "
6440 IF H < N THEN 6200
LPRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
LPRINT "  ALK SOFTWARE (C) 2001.  "
GOTO 6700
6500 REM
6510 LET F6 = N - H + 1
6520 LET D7 = F5 * F6
6530 LET R = R - D7
6540 LPRINT "ณ"; H; "["; K; "]", "      ณ    "; CSNG(D7); T$, "ณ     "; CSNG(R); T$; "ณ "
6550 IF H < N THEN 6200
LPRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
LPRINT " ALK SOFTWARE (C) 2001.  "
REM [.................................]
LET HJ = 0
LET PG$ = ""
6700 REM --------------------------------------------------
COLOR 0, 7
LOCATE 10, 15
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 15
PRINT "ณ NUMERISATION DES DONNEES EN COURS :          ณ"
LOCATE 12, 15
PRINT "ณ           ฌ         ซ         ๓              ณ"
LOCATE 13, 15
PRINT "ณ  ฺฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฟ     ณ"
LOCATE 14, 15
PRINT "ณ  ณ                                     ณ     ณ"
LOCATE 15, 15
PRINT "ณ  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู     ณ"
LOCATE 16, 15
PRINT "ณ  [X] IMP. TOUS LES TABLEAUX.                 ณ"
LOCATE 17, 15
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
LOCATE 16, 50
COLOR 3, 7
PRINT "< O.K. >"
LET PP$ = "ฑ"
6750 REM 2
LET HJ = 0
6755 LET HJ = HJ + 1
IF HJ = 10000 THEN 6780
GOTO 6755
6780 REM 3
LET PG$ = PG$ + PP$
LET VH = VH + 2
IF LEN(PG$) = 25 THEN 6810
6781 IF LEN(PG$) = 38 THEN 6790
COLOR 0, 7
LOCATE 14, 19
PRINT PG$
COLOR 0, 3
LOCATE 11, 54
PRINT VH; "%"
GOTO 6750
6790 REM 4
LOCATE 16, 50
COLOR 0, 6
PRINT "< O.K. >"
COLOR 1, 1
LOCATE 23, 30
INPUT " "; ju$
6800 GOTO 6910
6810 LET VH = VH + 26
GOTO 6781
6850 REM INFO. ++++++++++++++++++++++++++++
COLOR 11, 0

LOCATE 8, 53
PRINT "ฺฤฤฤฤฤฤฟ"
LOCATE 9, 53
PRINT "ณ      ณ"
LOCATE 10, 15
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู      ภฤฤฤฤฟ"
LOCATE 11, 15
PRINT "ณ                                                 ณ"
COLOR 12, 0
LOCATE 11, 18
PRINT "*** INFO. SUR AMORTISSEMENT. ***"
COLOR 11, 0
LOCATE 12, 15
PRINT "ณ                                                 ณ"
LOCATE 13, 15
PRINT "ณ - Taille sur disque : 39.8 Ko.                  ณ"
LOCATE 14, 15
PRINT "ณ - Version : 1.40 Seconde edition                ณ"
LOCATE 15, 15
PRINT "ณ - Programmeur : KARRAY Walid                    ณ"
LOCATE 16, 15
PRINT "ณ - Cration en SFAX [TUNISIE]                    ณ"
LOCATE 17, 15
PRINT "ณ - Date : 25 Dcembre 2001.                      ณ"
LOCATE 18, 15
PRINT "ณ - Rference : AL127.                            ณ"
LOCATE 19, 15
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ      ฺฤฤฤฤู"
LOCATE 20, 53
PRINT "ณ      ณ"
LOCATE 21, 53
PRINT "ภฤฤฤฤฤฤู"
COLOR 10, 0
LOCATE 9, 55
PRINT "ฺยฟ"
LOCATE 10, 55
PRINT " ณ"
LOCATE 11, 55
PRINT "ภมู"
LOCATE 12, 55
PRINT "ฺฟฺฟ"
LOCATE 13, 55
PRINT "ณณณ"
LOCATE 14, 55
PRINT "ูภู"
LOCATE 15, 55
PRINT "ยฤฤด"
LOCATE 16, 55
PRINT "รฤด"
LOCATE 17, 55
PRINT "ม"
LOCATE 18, 55
PRINT "ฺฤฟ"
LOCATE 19, 55
PRINT "ณ ณ"
LOCATE 20, 55
PRINT "ภฤู"
   DO
    LOOP UNTIL INKEY$ = CHR$(27)
GOTO 1
6900 REM **********************
LET UU$ = "ณ"
LOCATE 10, 10
END ' ----------
6910 REM
COLOR 14, 0
LOCATE 10, 20
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 20
PRINT "ณ   Return to Windows ?      ณ"
LOCATE 12, 20
PRINT "ณ      [Y/N] ?                ณ"
LOCATE 13, 20
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
CLEAR
6944 IF INKEY$ = "y" OR INKEY$ = "Y" THEN 776
IF INKEY$ = "n" OR INKEY$ = "N" THEN 7510
GOTO 6944
6950 REM
COLOR 14, 0
LOCATE 10, 20
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 11, 20
PRINT "ณ  Etes vous s–re de vouloir quitter ณ"
LOCATE 12, 20
PRINT "ณ          [Y/N] ?                    ณ"
LOCATE 13, 20
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
6940  IF INKEY$ = "y" OR INKEY$ = "Y" THEN 776
      IF INKEY$ = "n" OR INKEY$ = "N" THEN 1
GOTO 6940
6960 REM

7000 REM BLOC AIDE. ---------------------------
SCREEN 0
CLS
COLOR 0, 6
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                                                                              บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LOCATE 2, 12
COLOR 11, 6
PRINT "AIDE DU LOGICIEL [AMORTISSEMENT 1.40 SECONDE EDITION]"
LOCATE 3, 12
COLOR 0, 3
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บษอออออออออออออออออออออออออออออป                                               บ"
PRINT "ฬน                             ฬอออออออออออออออออออออออออออออออออออออออออออออออน"
LOCATE 6, 4
COLOR 10, 3
PRINT "PETITE INTRODUCTION"
LOCATE 7, 1
COLOR 0, 3
PRINT "บศอออออออออออออออออออออออออออออผ                                               บ"
PRINT "บ On veut calculer la dprciation annuelle d'un objet amortissable (Immeuble, บ"
PRINT "บune machine, ect..). Plusieurs mthodes existent : l'amortissement linaire,  บ"
PRINT "บl'amortissement dgressif et l'amortissement par la somme des ans. Ce logicielบ"
PRINT "บpourra effectuer ses calcules sur un tableau.                                 บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ                                                                              บ"
COLOR 14, 3
LOCATE 13, 3
PRINT "1. Amortissement linaire :"
COLOR 0, 3
PRINT "บ  Il est le plus simple … utiliser : la valeur initiale de l'objet est diviseบ"
PRINT "บ par sa dure de vie, et la rsultat est la dprciation annuelle de l'objet  บ"
PRINT "บ EXEMPLE : Si on veut amortir un objet de 8000 $ sur 10 ans, la dprciation  บ"
PRINT "บ annuelle sera 8000/10=800 $. L'objet vaudra 800 $ de moins par an.           บ"
PRINT "บ La dprciation annuelle est constante.                                      บ"
PRINT "บ                                                                              บ"
PRINT "บ                                                                              บ"
COLOR 14, 3
LOCATE 20, 3
PRINT "2. Amortissement Ddressif :"
COLOR 0, 3
PRINT "บ  Pour l'amortissement dgressif, la valeur de l'objet diminue d'un pourcent- บ"
PRINT "บ -age constant chaque anne, ce qui fait que la valeur relle de la dprciat-บ"

COLOR 1, 7
PRINT "ฑ [2] : PAGE 2/3 ฑ [8] : PAGE 2/3 ฑ [ESC] : QUITTER ฑ            PAGE  1/3    "
7010 IF INKEY$ = "2" THEN 7100
IF INKEY$ = CHR$(27) THEN 1
GOTO 7010
7100 REM
7122 CLS
COLOR 0, 6
PRINT " Continue de l'aide                                     PAGE 2/3                "
COLOR 0, 3
PRINT "บ -ion varie d'une anne … l'autre. Le facteur d'amortissement s'obtient en    บ"
PRINT "บ  divisant 2 par la dure de vie de l'objet. L'amortissement annuel s'obtient บ"
PRINT "บ en multipliant  ce facteur par la valeur de l'objet au dbut de l'anne en   บ"
PRINT "บ cours ( et non pas sa valeur initiale).                                      บ"
PRINT "บ EXEMPLE : On veut amortir le mme objet de 8000 $, sur 10 ans, de manire    บ"
PRINT "บ dgressive. Le facteur d'amortissement sera 2/10 = 0.2. La dprciation sera บ"
PRINT "บ gale, pour la 1ere anne, … 0.2 * 8000 = 1600 $. Pour la seconde anne, la  บ"
PRINT "บ la valeur initiale de l'objet n'est plus que 8000-1600=6400, et l'amortisse- บ"
PRINT "บ -ment est gal … 0.2 * 6400 = 1280 $. Pour la 3eme anne, la valeur initiale บ"
PRINT "บ est 6400-1280=5120 $, et l'amortissement est 0.2 * 5120 = 1024 $, ect ...    บ"
PRINT "บ                                                                              บ"
PRINT "บ                                                                              บ"
COLOR 14, 3
LOCATE 13, 3
PRINT "3. Amortissement par la somme des ans :"
COLOR 0, 3
PRINT "บ  Dans l'amortissement par la somme des annes, la valeur de l'objet diminue  บ"
PRINT "บ d'un pourcentage diffrent chaque anne. Le facteur d'amortissement est gal บ"
PRINT "บ … une fraction dont le dnominateur est la somme des entiers de 1 … X (o— X  บ"
PRINT "บ est la dure de vie). EXEMPLE : Pour une dure de vie de 10 ans, ce dnomi-  บ"
PRINT "บ -nateur est gal … 1+2+3+....+10 = 55. Quant au numrateur, il vaut (X) la   บ"
PRINT "บ 1ere anne, X-1 la seconde anne, X-2, la 3eme, ect... La dprciation s'ob- บ"
PRINT "บ -tient en multipliant le facteur d'amortissement par la valeur initiale de   บ"
PRINT "บ l'objet.                                                                     บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
COLOR 1, 7
PRINT "ฑ [2] : PAGE 3/3 ฑ [8] : PAGE 1/3 ฑ [ESC] : QUITTER ฑ            PAGE  2/3    "
7125 IF INKEY$ = "2" THEN 7130
IF INKEY$ = "8" THEN 7000
IF INKEY$ = CHR$(27) THEN 1
7129 GOTO 7125
7130 CLS
COLOR 0, 6
PRINT " Continue de l'aide                                      PAGE 3/3               "
PRINT "                                                                                "
COLOR 0, 3
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                        ษอออออออออออออออออออออออออออออป                       บ"
PRINT "ฬออออออออออออออออออออออออน                             ฬอออออออออออออออออออออออน"
LOCATE 4, 34
COLOR 11, 3
PRINT "ฎLES ERREURSฏ"
LOCATE 5, 1
COLOR 0, 3
PRINT "บ                        ศอออออออออออออออออออออออออออออผ                       บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘01 :  La valeur de l'objet est gale … 0.           V=0          บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘02 :  La valeur de l'objet est suprieure … 9E9.    V>999999999. บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘03 :  Date suprieure … la date de cet instant.     V>Date       บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘04 :  Date infrieure … 1875 (Date rgler).         V<1875       บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘05 :  Dure de vie suprieure … 200 ans.            V>200        บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ   Erreur N๘06 :  Dure de vie infrieure … 2 ans               V<02         บ"
PRINT "ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน"
PRINT "บ REMARQUE : Il est possible de modifier ses valeurs en appuiant F3 en page    บ"
PRINT "บ Menue.                                                                       บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
PRINT "                                                  KARRAY Walid. ALKSOFT (C)2001   "
COLOR 0, 7
PRINT "ฑ [2] : QUITTER ฑ [8] : PAGE 2/3 ฑ [ESC] : QUITTER ฑ            PAGE  3/3     "
COLOR 7, 1
7045 IF INKEY$ = "2" THEN 1
IF INKEY$ = "8" THEN 7122
IF INKEY$ = CHR$(27) THEN 1
GOTO 7045
7050 REM
CLEAR
LET OO = 1
PLAY ON
   music$ = "MBo2L8EMBo3L8E"
   PLAY music$
T$ = "()"
LET xp$ = DATE$
LET X$ = RIGHT$(xp$, 4)
LET O = VAL(X$)
LET V1 = 999999999
LET K1 = 1875
LET K2 = O
LET N8 = 200
GOTO 1
7200 REM ++++++ REGLAGE +++++++++++++
KEY 7, "-7" + CHR$(13)
KEY 8, "-8" + CHR$(13)
KEY 9, "-9" + CHR$(13)
KEY 10, "-10" + CHR$(13)
KEY 30, "-11" + CHR$(13)
KEY 31, "-12" + CHR$(13)
COLOR 0, 15
LOCATE 7, 5
PRINT "ฺฤฤฤฤ[þ]ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 8, 5
PRINT "ณ TAPEZ DE F9 … F12 POUR MODIFIER   ณ  [ F8 Par dfault ]  ณ F7 = O.K. ณ"
LOCATE 9, 5
PRINT "รฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 10, 5
PRINT "ณFonc.ณ Valeur non rgle.               ณ Nouvelle valeur.            ณ"
COLOR 1, 3
LOCATE 8, 44
PRINT "[ F8 Par dfault ]"
LOCATE 8, 66
PRINT "F7 = O.K."
COLOR 4, 15
LOCATE 10, 6
PRINT "Fonc."
LOCATE 10, 13
PRINT "Valeur non rgle."
LOCATE 10, 48
PRINT "Nouvelle valeur. (Modifie)."
COLOR 0, 15
LOCATE 11, 5
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 12, 5
PRINT "ณ F09 ณ Valeur de l'objet :.... MAX=9E9. ณ  ........................   ณ"
LOCATE 13, 5
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 14, 5
PRINT "ณ F10 ณ Anne :MIN=1875 :...... MIN=1875 ณ  ........................   ณ"
LOCATE 15, 5
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 16, 5
PRINT "ณ F11 ณ Anne :MAX=1875 :..... MAX="; O; "ณ  ........................   ณ"
LOCATE 17, 5
PRINT "รฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 18, 5
PRINT "ณ F12 ณ Dure de vie (Ans): ... MAX=200  ณ  ........................   ณ"
LOCATE 19, 5
PRINT "ภฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
COLOR 0, 0
LOCATE 8, 77
PRINT "  "
LOCATE 9, 77
PRINT "  "
LOCATE 10, 77
PRINT "  "
LOCATE 11, 77
PRINT "  "
LOCATE 12, 77
PRINT "  "
LOCATE 13, 77
PRINT "  "
LOCATE 14, 77
PRINT "  "
LOCATE 15, 77
PRINT "  "
LOCATE 16, 77
PRINT "  "
LOCATE 17, 77
PRINT "  "
LOCATE 18, 77
PRINT "  "
LOCATE 19, 77
PRINT "  "
LOCATE 20, 6
PRINT "                                                                         "




COLOR 0, 7
LOCATE 12, 48
PRINT V1
LOCATE 14, 48
PRINT K1
LOCATE 16, 48
PRINT K2
LOCATE 18, 48
PRINT N8
COLOR 10, 8
LOCATE 12, 7
PRINT "F09"
LOCATE 14, 7
PRINT "F10"
LOCATE 16, 7
PRINT "F11"
LOCATE 18, 7
PRINT "F12"
7210 LOCATE 23, 1
COLOR 1, 1
INPUT "", JO$
COLOR 0, 7
IF JO$ = "-7" THEN 1
IF JO$ = "-8" THEN 7500
IF JO$ = "-9" THEN 7250
IF JO$ = "-10" THEN 7260
IF JO$ = "-11" THEN 7280
IF JO$ = "-12" THEN 7290
GOTO 7210
7250 REM ----------------------F9----------
COLOR 30, 0
LOCATE 12, 7
PRINT "F09"
COLOR 0, 11
LOCATE 12, 13
PRINT "Valeur de l'objet :.... MAX=9E9."
LOCATE 12, 49
PRINT "........................"
LOCATE 12, 49
INPUT "", V1$
LET V1 = VAL(V1$)
IF V1 <= 0 THEN 7256
IF V1 > 999999999999# THEN 7256
GOTO 7200
7256 REM
LET V1 = 999999999
GOTO 7200
REM ----------------------------------------
7260 REM ----------------------F10----------
COLOR 30, 0
LOCATE 14, 7
PRINT "F10"
COLOR 0, 11
LOCATE 14, 13
PRINT "Anne :MAX=1875 :..... MAX="; O
LOCATE 14, 49
PRINT "........................"
LOCATE 14, 49

INPUT "", K1$
LET K1 = VAL(K1$)
IF K1 <= 0 THEN 7268
IF K1 > 9995 THEN 7268
GOTO 7200
7268 REM
LET K1 = 1875
GOTO 7200
REM ----------------------------------------
7280 REM ----------------------F11----------

COLOR 30, 0
LOCATE 16, 7
PRINT "F11"
COLOR 0, 11
LOCATE 16, 13
PRINT "Anne :MIN=1875 :...... MIN=1875"
LOCATE 16, 49
PRINT "........................"
LOCATE 16, 49
INPUT "", K2$
LET K2 = VAL(K2$)
IF K2 <= 0 THEN 7288
IF K2 > 9995 THEN 7288
GOTO 7200
7288 REM
LET K2 = O
GOTO 7200
REM ----------------------------------------
7290 REM ----------------------F12----------

COLOR 30, 0
LOCATE 18, 7
PRINT "F12"
COLOR 0, 11
LOCATE 18, 13
PRINT "Dure de vie (Ans): ... MAX=200 "
LOCATE 18, 49
PRINT "........................"
LOCATE 18, 49
INPUT "", N8$
LET N8 = VAL(N8$)
IF N8 <= 0 THEN 7299
IF N8 > 9999 THEN 7299
GOTO 7200
7299 REM
LET N8 = 200
GOTO 7200
REM ----------------------------------------
7500 REM
LET xp$ = DATE$
LET X$ = RIGHT$(xp$, 4)
LET O = VAL(X$)
LET V1 = 999999999
LET K1 = 1875
LET K2 = O
LET N8 = 200
GOTO 7200
7510 REM
LET xp$ = DATE$
LET X$ = RIGHT$(xp$, 4)
LET O = VAL(X$)
LET V1 = 999999999
LET K1 = 1875
LET K2 = O
LET N8 = 200
GOTO 1
8000 SCREEN 0
COLOR 1, 1
CLS
LET L = 0
8050 REM ---------
LET L = L + 1
COLOR 0, 0
LOCATE L, 1
PRINT " "
LOCATE L, 80
PRINT " "
COLOR 1, 1
LOCATE L, 15
COLOR 0, 9
PRINT "                                                   "
LOCATE L, 2
PRINT "ฒฒฒฒฒ"
LOCATE L, 7
PRINT "ฑฑฑฑ"
LOCATE L, 11
PRINT "ฐฐฐฐฐ"
LOCATE L, 66
PRINT "ฐฐฐฐฐ"
LOCATE L, 71
PRINT "ฑฑฑฑ"
LOCATE L, 75
PRINT "ฒฒฒฒฒ"
IF L = 23 GOTO 8100
GOTO 8050
8100 REM -------------
COLOR 14, 12
LOCATE 2, 11
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 3, 11
PRINT "บ  A BIENTOT ALKSOFT SOFTWARE. AVEC ฎ L.AMORTISSEMENT 1.40ฏบ"
LOCATE 4, 11
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LOCATE 6, 5
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 7, 5
PRINT "บ  ..Merci bien d'avoir utiliser ce logiciel d'amortissement (Version  บ"
LOCATE 8, 5
PRINT "บ 1.40 2Eme dition).                                                  บ"
LOCATE 9, 5
PRINT "บ                                                                      บ"
LOCATE 10, 5
PRINT "บ   Ce programme … t dvelopp … la fin de l'anne 2001 (periode     บ"
LOCATE 11, 5
PRINT "บ Out-Dcembre) par le dbutant programmeur KARRAY Walid qui a perdu   บ"
LOCATE 12, 5
PRINT "บ cette longue periode … crer ce logiciel, n'oubliez pas aussi de re- บ"
LOCATE 13, 5
PRINT "บ mercir les inggneurs de ce domaine qu'ils m'ont aids et m'ont en-  บ"
LOCATE 14, 5
PRINT "บ courags … dvelopper ce logiciel.                                   บ"
LOCATE 15, 5
PRINT "บ L'ide de ce logiciel … t pris du livre ฎ PROGRAMMATION BASIC ฏ,   บ"
LOCATE 16, 5
PRINT "บ Serie Shaum par BYRONS. S. GOTTFRIED ธ 1985 Pages(56 … 60), Maison d'บ"
LOCATE 17, 5
PRINT "บ  dition Mc Graw Hill.    -  Ref. ISBN France : 2-7042-1017-9        บ"
LOCATE 18, 5
PRINT "บ                           -  Ref. ISBN Canada : 0-07-092301-9        บ"
LOCATE 19, 5
PRINT "บ Par ALKSOFT ( A L K A W A R I S M I    S O F T W A R E ).            บ"
LOCATE 20, 5
PRINT "บ            EDITION : ALK SOFTWARE, Co. Ltd., ธ 2001                  บ"
LOCATE 20, 18
COLOR 10, 4
PRINT "EDITION : ALK SOFTWARE, Co. Ltd., ธ 2001"
COLOR 14, 4
LOCATE 21, 5
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LOCATE 23, 37
COLOR 15, 0
PRINT "(C) 2001 Par ALK Software co. ltd.,"
LOCATE 23, 5
PRINT "Termin … : "; TIME$
DO
LOOP UNTIL INKEY$ = CHR$(27)
COLOR 7, 0
END
8800 REM ----------------
LOCATE 7, 6
COLOR 0, 11
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
LOCATE 8, 6
PRINT "ณ Nom du document  ณ                                                ณ"
LOCATE 9, 6
PRINT "รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤยยฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
LOCATE 10, 6
PRINT "ณ Fichier N๘       ณ      ณณ  F1 = O.K.  ณ  F2 = ANNULER            ณ"
LOCATE 11, 6
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤมมฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
END