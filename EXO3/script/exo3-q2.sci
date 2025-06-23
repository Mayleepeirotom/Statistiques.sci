
--> data_num = csvRead("data.csv", ",");

--> data_str = csvRead("data.csv", ",", [], "string");

--> 

--> // Extraire genre (colonne 3) et temps (colonne 6)

--> genre = stripblanks(data_str(:,3));

--> temps = data_num(:,6);

--> 

--> // Séparer par genre

--> temps_h = temps(genre == "Male");

--> temps_f = temps(genre == "Female");

--> 

--> //  hommes

--> qh = quart(temps_h);

--> min_h = min(temps_h);

--> q1_h = qh(1);

--> med_h = qh(2);

--> q3_h = qh(3);

--> max_h = max(temps_h);

--> 

--> // femmes

--> qf = quart(temps_f);

--> min_f = min(temps_f);

--> q1_f = qf(1);

--> med_f = qf(2);

--> q3_f = qf(3);

--> max_f = max(temps_f);

--> 

--> // Affichage console

--> disp("Statistiques pour les hommes :");

  "Statistiques pour les hommes :"

--> disp("  Min     : " + string(min_h));

  "  Min     : 1.5"

--> disp("  Q1      : " + string(q1_h));

  "  Q1      : 4.1"

--> disp("  Médiane : " + string(med_h));

  "  Médiane : 4.7"

--> disp("  Q3      : " + string(q3_h));

  "  Q3      : 5.6"

--> disp("  Max     : " + string(max_h));

  "  Max     : 7.5"

--> disp("");

  ""

--> 

--> disp("Statistiques pour les femmes :");

  "Statistiques pour les femmes :"

--> disp("  Min     : " + string(min_f));

  "  Min     : 2.2"

--> disp("  Q1      : " + string(q1_f));

  "  Q1      : 4.175"

--> disp("  Médiane : " + string(med_f));

  "  Médiane : 4.8"

--> disp("  Q3      : " + string(q3_f));

  "  Q3      : 5.925"

--> disp("  Max     : " + string(max_f));

  "  Max     : 8.5"

--> 

--> // Affichage graphique (boxplot)

--> clf();

--> boxplot(list(temps_h, temps_f), "orientation", "horizontal", "whisker", 0.25);

--> xtitle("Temps d''utilisation des réseaux selon le genre");

--> xlabel("Temps d''utilisation (heures/jour)");

--> 



--> xstring(min_h, 1 - 0.3, "min: " + string(min_h));

--> xstring(q1_h, 1 - 0.25, "Q1: " + string(q1_h));

--> xstring(med_h, 1 - 0.20, "Med: " + string(med_h));

--> xstring(q3_h, 1 - 0.15, "Q3: " + string(q3_h));

--> xstring(max_h, 1 - 0.10, "max: " + string(max_h));

--> 

--> xstring(min_f, 2 - 0.3, "min: " + string(min_f));

--> xstring(q1_f, 2 - 0.25, "Q1: " + string(q1_f));

--> xstring(med_f, 2 - 0.20, "Med: " + string(med_f));

--> xstring(q3_f, 2 - 0.15, "Q3: " + string(q3_f));

--> xstring(max_f, 2 - 0.10, "max: " + string(max_f));
