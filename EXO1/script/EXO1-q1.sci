-->csv = csvRead('data.csv',','); 

-->colonnes = [2, 6, 9, 10, 12, 13];

-->noms = ["Age", "DailyUsage", "SleepHours", "MentalHealth", "Conflicts", "Addicted"];

-->

-->resultats = ["Nom", "Moyenne", "Ecart-type", "Min", "Q1", "Q2", "Q3", "Max"];

-->

-->for k = 1:length(colonnes)
-->    i = colonnes(k);
-->    col = csv(:, i);
-->    col = col(~isnan(col)); 
-->
-->    if length(col) >= 3 then
-->        m = mean(col);
-->        s = stdev(col);
-->        mi = min(col);
-->        q = quart(col);
-->        ma = max(col);
-->        ligne = [noms(k), string(m), string(s), string(mi), ...
-->                 string(q(1)), string(q(2)), string(q(3)), string(ma)];
-->    end
-->
-->    resultats = [resultats; ligne];
-->end

-->

-->disp(resultats);

  "Nom"           "Moyenne"    "Ecart-type"  "Min"  "Q1"   "Q2"   "Q3"   "Max"
  "Age"           "20.659574"  "1.3992175"   "18"   "19"   "21"   "22"   "24" 
  "DailyUsage"    "4.9187234"  "1.2573945"   "1.5"  "4.1"  "4.8"  "5.8"  "8.5"
  "SleepHours"    "6.8689362"  "1.126848"    "3.8"  "6"    "6.9"  "7.7"  "9.6"
  "MentalHealth"  "6.2269504"  "1.1050555"   "4"    "5"    "6"    "7"    "9"  
  "Conflicts"     "2.8496454"  "0.9579678"   "0"    "2"    "3"    "4"    "5"  
  "Addicted"      "6.4368794"  "1.5871649"   "2"    "5"    "7"    "8"    "9"  
