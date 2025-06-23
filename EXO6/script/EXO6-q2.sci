genre  = stripblanks(strsubst(data(:,3), """", ""));
usage  = strtod(stripblanks(strsubst(data(:,6), """", "")));
sleep  = strtod(stripblanks(strsubst(data(:,9), """", "")));

valid = ~isnan(usage) & ~isnan(sleep);
genre = genre(valid);
usage = usage(valid);
sleep = sleep(valid);

hommes = (genre == "Male");
femmes = (genre == "Female");

x_h = usage(hommes);
y_h = sleep(hommes);
x_f = usage(femmes);
y_f = sleep(femmes);

mxh = mean(x_h); myh = mean(y_h);
mxf = mean(x_f); myf = mean(y_f);

b_h = sum((x_h - mxh).*(y_h - myh)) / sum((x_h - mxh).^2);
a_h = myh - b_h * mxh;

b_f = sum((x_f - mxf).*(y_f - myf)) / sum((x_f - mxf).^2);
a_f = myf - b_f * mxf;

clf();
plot(x_h, y_h, 'bo'); // points hommes
plot(x_f, y_f, 'ro'); // points femmes

x = linspace(min(usage), max(usage), 100);
plot(x, a_h + b_h*x, 'b-');
plot(x, a_f + b_f*x, 'r-');

legend(["Hommes", "Femmes", "Régression Hommes", "Régression Femmes"], "in_upper_right");
xtitle("Lien entre temps d''utilisation et sommeil", "Temps d''utilisation (h)", "Heures de sommeil");

mprintf("Régression Hommes : y = %.2f + %.2f*x\n", a_h, b_h);
mprintf("Régression Femmes : y = %.2f + %.2f*x\n", a_f, b_f);