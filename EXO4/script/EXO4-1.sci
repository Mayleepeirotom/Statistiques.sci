-->data_num = csvRead("data.csv", ",");

-->data_str = csvRead("data.csv", ",", [], "string");

-->temps = data_num(:,6);

-->impact = stripblanks(data_str(:,8));

-->g1 = (temps >= 0) & (temps < 2);

-->g2 = (temps >= 2) & (temps < 4);

-->g3 = (temps >= 4) & (temps < 6);

-->g4 = (temps >= 6) & (temps <= 12);

-->yes_no = [
-->    sum(impact(g1) == "No"),  sum(impact(g1) == "Yes");
-->    sum(impact(g2) == "No"),  sum(impact(g2) == "Yes");
-->    sum(impact(g3) == "No"),  sum(impact(g3) == "Yes");
-->    sum(impact(g4) == "No"),  sum(impact(g4) == "Yes")
-->];

-->disp(yes_no);

   1.     0.  
   132.   21. 
   119.   282.
   0.     150.

-->clf();

-->bar(yes_no);

-->xtitle("Impact perçu sur la performance selon le temps passé sur les réseaux");

-->xlabel("Temps d''utilisation (heures/jour)");

-->ylabel("Nombre d''étudiants");

-->legend(["Non", "Oui"], "upper_right");
