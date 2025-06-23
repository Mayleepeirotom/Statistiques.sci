conflicts = data(:,12);    
addiction = data(:,13);   

valid = ~isnan(conflicts) & ~isnan(addiction);
conflicts = conflicts(valid);
addiction = addiction(valid);

clf();
plot(addiction, conflicts, 'o');
xtitle("Conflits en fonction du score d addiction", "Score d addiction", "Nombre de conflits");
