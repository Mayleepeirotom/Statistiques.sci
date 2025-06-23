--> data_num = csvRead("data.csv", ",");

--> data_str = csvRead("data.csv", ",", [], "string");

--> 


--> niveau = stripblanks(data_str(:,4));

--> score = data_num(:,13);

--> 

--> score_hs = score(niveau == "High School");

--> score_ug = score(niveau == "Undergraduate");

--> score_g  = score(niveau == "Graduate");

--> 

--> // Calcul High School

--> qh = quart(score_hs);

--> min_hs = min(score_hs);

--> q1_hs = qh(1); med_hs = qh(2); q3_hs = qh(3);

--> max_hs = max(score_hs);

--> 

--> // Calcul Undergraduate

--> qu = quart(score_ug);

--> min_ug = min(score_ug);

--> q1_ug = qu(1); med_ug = qu(2); q3_ug = qu(3);

--> max_ug = max(score_ug);

--> 

--> // Calcul  Graduate

--> qg = quart(score_g);

--> min_g = min(score_g);

--> q1_g = qg(1); med_g = qg(2); q3_g = qg(3);

--> max_g = max(score_g);

--> 


--> disp("Statistiques - High School :");

  "Statistiques - High School :"

--> disp("  Min     : " + string(min_hs));

  "  Min     : 4"

--> disp("  Q1      : " + string(q1_hs));

  "  Q1      : 8"

--> disp("  Médiane : " + string(med_hs));

  "  Médiane : 8"

--> disp("  Q3      : " + string(q3_hs));

  "  Q3      : 9"

--> disp("  Max     : " + string(max_hs));

  "  Max     : 9"

--> disp("");

  ""

--> 

--> disp("Statistiques - Undergraduate :");

  "Statistiques - Undergraduate :"

--> disp("  Min     : " + string(min_ug));

  "  Min     : 3"

--> disp("  Q1      : " + string(q1_ug));

  "  Q1      : 5"

--> disp("  Médiane : " + string(med_ug));

  "  Médiane : 7"

--> disp("  Q3      : " + string(q3_ug));

  "  Q3      : 8"

--> disp("  Max     : " + string(max_ug));

  "  Max     : 9"

--> disp("");

  ""

--> 

--> disp("Statistiques - Graduate :");

  "Statistiques - Graduate :"

--> disp("  Min     : " + string(min_g));

  "  Min     : 2"

--> disp("  Q1      : " + string(q1_g));

  "  Q1      : 5"

--> disp("  Médiane : " + string(med_g));

  "  Médiane : 7"

--> disp("  Q3      : " + string(q3_g));

  "  Q3      : 7"

--> disp("  Max     : " + string(max_g));

  "  Max     : 9"

--> 



--> clf();

--> boxplot(list(score_hs, score_ug, score_g), "orientation", "horizontal", "whisker", 0.25);

--> xtitle("Score d''addiction selon le niveau académique");

--> xlabel("Score d''addiction");

--> 

--> //  High School

--> xstring(min_hs, 1 - 0.3, "min: " + string(min_hs));

--> xstring(q1_hs, 1 - 0.25, "Q1: " + string(q1_hs));

--> xstring(med_hs, 1 - 0.20, "Med: " + string(med_hs));

--> xstring(q3_hs, 1 - 0.15, "Q3: " + string(q3_hs));

--> xstring(max_hs, 1 - 0.10, "max: " + string(max_hs));

--> 

--> //Undergraduate

--> xstring(min_ug, 2 - 0.3, "min: " + string(min_ug));

--> xstring(q1_ug, 2 - 0.25, "Q1: " + string(q1_ug));

--> xstring(med_ug, 2 - 0.20, "Med: " + string(med_ug));

--> xstring(q3_ug, 2 - 0.15, "Q3: " + string(q3_ug));

--> xstring(max_ug, 2 - 0.10, "max: " + string(max_ug));

--> 

--> //  Graduate

--> xstring(min_g, 3 - 0.3, "min: " + string(min_g));

--> xstring(q1_g, 3 - 0.25, "Q1: " + string(q1_g));

--> xstring(med_g, 3 - 0.20, "Med: " + string(med_g));

--> xstring(q3_g, 3 - 0.15, "Q3: " + string(q3_g));

--> xstring(max_g, 3 - 0.10, "max: " + string(max_g));
