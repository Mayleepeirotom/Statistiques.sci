 exec("/home/sarah/Téléchargements/scilab-2024.1.0.bin.x86_64-linux-gnu/scilab-2024.1.0/share/scilab/contrib/stixbox/loader.sce")

--> // Lecture du fichier CSV (valeurs numériques)

--> data_num = csvRead("data.csv", ",");

--> 



--> age = data_num(:,2);

--> temps = data_num(:,6);

--> 

--> // Séparation des groupes d'âge

--> temps_16_20 = temps((age >= 16) & (age <= 20));

--> temps_21_25 = temps((age >= 21) & (age <= 25));

--> 

--> // Calcul des statistiques

--> q1 = quart(temps_16_20);  min1 = min(temps_16_20);  max1 = max(temps_16_20);

--> q2 = quart(temps_21_25);  min2 = min(temps_21_25);  max2 = max(temps_21_25);

--> 

--> // Affichage console

--> disp("Statistiques pour les 16-20 ans :");

  "Statistiques pour les 16-20 ans :"

--> disp("  Min     : " + string(min1));

  "  Min     : 2.2"

--> disp("  Q1      : " + string(q1(1)));

  "  Q1      : 4.2"

--> disp("  Médiane : " + string(q1(2)));

  "  Médiane : 4.8"

--> disp("  Q3      : " + string(q1(3)));

  "  Q3      : 5.9"

--> disp("  Max     : " + string(max1));

  "  Max     : 8.5"

--> disp("");

  ""

--> 

--> disp("Statistiques pour les 21-25 ans :");

  "Statistiques pour les 21-25 ans :"

--> disp("  Min     : " + string(min2));

  "  Min     : 1.5"

--> disp("  Q1      : " + string(q2(1)));

  "  Q1      : 4"

--> disp("  Médiane : " + string(q2(2)));

  "  Médiane : 4.7"

--> disp("  Q3      : " + string(q2(3)));

  "  Q3      : 5.7"

--> disp("  Max     : " + string(max2));

  "  Max     : 7.5"

--> 

--> // Affichage graphique

--> clf();

--> boxplot(list(temps_16_20, temps_21_25), "orientation", "horizontal", "whisker", 0.25);

--> xtitle("Temps d''utilisation des réseaux selon l''âge");

--> xlabel("Temps d''utilisation (heures/jour)");

--> 

--> //  groupe 16–20

--> xstring(min1, 1 - 0.3, "min: " + string(min1));

--> xstring(q1(1), 1 - 0.25, "Q1: " + string(q1(1)));

--> xstring(q1(2), 1 - 0.20, "Med: " + string(q1(2)));

--> xstring(q1(3), 1 - 0.15, "Q3: " + string(q1(3)));

--> xstring(max1, 1 - 0.10, "max: " + string(max1));

--> 

--> // groupe 21–25

--> xstring(min2, 2 - 0.3, "min: " + string(min2));

--> xstring(q2(1), 2 - 0.25, "Q1: " + string(q2(1)));

--> xstring(q2(2), 2 - 0.20, "Med: " + string(q2(2)));

--> xstring(q2(3), 2 - 0.15, "Q3: " + string(q2(3)));

--> xstring(max2, 2 - 0.10, "max: " + string(max2));
