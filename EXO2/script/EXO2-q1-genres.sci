genre = data(:,3);

tab = tabul(genre);

total = sum(tab(2)); // somme des effectifs
pourcentages = 100 * tab(2) / total;

labels = tab(1); // "Male", "Female", etc.
for i = 1:size(labels, "*")
    labels(i) = labels(i) + " (" + msprintf("%.1f", pourcentages(i)) + "%)";
end

clf();
pie(tab(2), labels);
xtitle("Répartition des genres avec pourcentages");
