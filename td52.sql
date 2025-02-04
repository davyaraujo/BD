
DROP TABLE RESULTAT;

PROMPT (Numclient demande):
ACCEPT numcli_prompt NUMBER;

DECLARE
    v_nb_comandes NUMBER;
    v_message_resultat VARCHAR2(100);
BEGIN
    SELECT COUNT(*) 
    INTO v_nb_comandes
    FROM COM 
    WHERE COM.NUMCLI = numcli_prompt;

    if v_nb_comandes = 0 THEN
         v_message_resultat := 'Pas de comande';
    ELSE    
        v_message_resultat := v_nb_comandes || ' commandes pour le client ' || numcli_prompt;
    END IF;

    INSERT INTO RESULTAT(NUMCLi, MESSAGE)
    VALUES(numcli_prompt,v_message_resultat);


    COMMIT;
END;
/