
-->data = csvRead("data.csv", ",", [], "string");

-->

--> levels = (data(:,4));

-->

--> levels_uniques = unique(levels);

-->

--> effectifs = zeros(size(levels_uniques, 1), 1);

-->

--> for i = 1:size(levels_uniques, 1)
-->      effectifs(i) = sum(levels == levels_uniques(i));
--> end

-->

--> [eff_trie, indices] = gsort(effectifs, "g");

-->

-->disp("Niveau d études   Effectif");

  "Niveau d études   Effectif"

-->

--> for i = 1:length(indices)
-->      disp(levels_uniques(indices(i)) + "   " + string(eff_trie(i)));
--> end

  "Undergraduate   353"

  "Graduate   325"

  "High School   27"