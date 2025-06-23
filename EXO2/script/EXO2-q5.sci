platforms = data(:,7);

platforms_uniques = unique(platforms);

effectifs = zeros(size(platforms_uniques, 1), 1);

for i = 1:size(platforms_uniques, 1)
    effectifs(i) = sum(platforms == platforms_uniques(i));
end

[eff_trie, indices] = gsort(effectifs, "g");
labels_triees = platforms_uniques(indices);

clf(); // Efface le graphique précédent
bar(eff_trie);
xtitle("Effectifs des plateformes les plus utilisées", "Plateforme", "Effectif");