CREATE TABLE RESULTAT (
    CODE NUMBER,
    MESSAGE CHAR(50)
);

-- Suppression des données existantes
DELETE FROM RESULTAT;

-- Demande du nombre de lignes à produire
PROMPT Nombre de lignes à produire :
ACCEPT n NUMBER;

-- Bloc PL/SQL pour remplir la table
DECLARE
    x NUMBER := 0; -- Initialisation de la variable x
BEGIN
    -- Boucle pour insérer les valeurs
    FOR i IN 1..&n LOOP
        IF MOD(x, 2) = 0 THEN -- Vérifie si x est pair
            INSERT INTO RESULTAT VALUES (x, 'Pair');
        ELSE -- Si x est impair
            INSERT INTO RESULTAT VALUES (x, 'Impair');
        END IF;
        x := x + 1; -- Incrémentation de x
    END LOOP;

    -- Validation des changements
    COMMIT;
END;
/

-- Affichage du contenu de la table
SELECT * FROM RESULTAT;



