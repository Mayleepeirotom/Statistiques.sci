genre  = stripblanks(strsubst(data(:,3), """", ""));   
usage  = strtod(stripblanks(strsubst(data(:,6), """", "")));
sleep  = strtod(stripblanks(strsubst(data(:,9), """", ""))); 

valid = ~isnan(usage) & ~isnan(sleep);

genre  = genre(valid);
usage  = usage(valid);
sleep  = sleep(valid);

hommes = (genre == "Male");
femmes = (genre == "Female");

clf();
plot(usage(hommes), sleep(hommes), 'bo');  // hommes en bleu
plot(usage(femmes), sleep(femmes), 'ro');  // femmes en rouge
legend(["Hommes", "Femmes"], "in_upper_right");
xtitle("Heures de sommeil en fonction du temps d utilisation", "Temps d utilisation (h)", "Heures de sommeil");

