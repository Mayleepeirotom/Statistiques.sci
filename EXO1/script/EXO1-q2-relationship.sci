-->relationships = stripblanks(strsubst(data(:,11), """", "")); 

-->

-->relationships_uniques = unique(relationships);

-->

-->effectifs = zeros(size(relationships_uniques, 1), 1);

-->

-->for i = 1:size(relationships_uniques, 1)
-->    effectifs(i) = sum(relationships == relationships_uniques(i));
-->end

-->

-->[eff_trie, indices] = gsort(effectifs, "g");

-->

-->disp("Relationship   Effectif");

  "Relationship   Effectif"

-->

-->for i = 1:length(indices)
-->    disp(relationships_uniques(indices(i)) + "   " + string(eff_trie(i)));
-->end

  "Single   384"

  "In Relationship   289"

  "Complicated   32"