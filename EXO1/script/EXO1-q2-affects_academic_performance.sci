-->affect = (data(:,8));

-->affect_uniques = unique(affect);

-->effectifs = zeros(size(affect_uniques, 1), 1);

-->

-->for i = 1:size(affect_uniques, 1)
-->    effectifs(i) = sum(affect == affect_uniques(i));
-->end

-->

-->[eff_trie, indices] = gsort(effectifs, "g");

-->

-->for i = 1:length(indices)
-->    current_value = affect_uniques(indices(i));
-->
-->    if current_value == "Yes" then
-->        label = "Affecte la performance academique";
-->    elseif current_value == "No" then
-->        label = "N_affecte pas la performance academique";
-->    else
-->        label = "Valeur inconnue : " + current_value;
-->    end
-->
-->    disp(label + "   " + string(eff_trie(i)));
-->end

  "Affecte la performance academique   453"

  "N_affecte pas la performance academique   252"