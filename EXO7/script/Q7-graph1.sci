-->// Lecture du fichier CSV en mode texte

-->data = csvRead("data.csv", ",", [], "string");

-->

-->// Nettoyage des colonnes (retrait des guillemets et des blancs)

-->ment_raw = stripblanks(strsubst(data(:,10), """", ""));

-->add_raw  = stripblanks(strsubst(data(:,13), """", ""));

-->

-->// Conversion en valeurs numériques

-->ment_score = strtod(ment_raw);

-->add_score  = strtod(add_raw);

-->

-->// Affichage console

-->disp("Addiction Score - Mental Health Score :")

  "Addiction Score - Mental Health Score :"

-->for i = 1:length(add_score)
-->    if ~isnan(add_score(i)) & ~isnan(ment_score(i)) then
-->        disp("A = " + string(add_score(i)) + ", M = " + string(ment_score(i)));
-->    end
-->end

  "A = 8, M = 6"

  "A = 3, M = 8"

  "A = 9, M = 5"

  "A = 4, M = 7"

  "A = 7, M = 6"

  "A = 9, M = 4"

  "A = 2, M = 9"

  "A = 8, M = 6"

    .
    .
    . //Il y a beaucoup trop de lignes qui sont affichés (on en a enlevé quelques unes pour une meilleure lisibilité)

  "A = 7, M = 6"

  "A = 4, M = 8"

  "A = 8, M = 5"

-->

-->// Tracé du nuage de points

-->clf();

-->plot(add_score, ment_score, 'o');

-->xtitle("Mental Health Score vs Addiction Score", "Addiction Score", "Mental Health Score");
