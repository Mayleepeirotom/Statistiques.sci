
-->niveaux = data(:,4);

-->categories = ["High School", "Undergraduate", "Graduate"];

-->effectifs = zeros(1, size(categories, 2));

-->for i = 1:size(categories, 2)
-->    effectifs(i) = sum(niveaux == categories(i));
-->end

-->disp([categories' string(effectifs')], "Niveau scolaire et effectifs");

  "High School"    "27" 
  "Undergraduate"  "353"
  "Graduate"       "325"

  "Niveau scolaire et effectifs"

-->clf();

-->bar(effectifs);

-->xtitle("Répartition des étudiants par niveau scolaire");
