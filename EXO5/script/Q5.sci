
-->data = csvRead("data.csv", ",");

-->sommeil = data(:, 9);

-->addiction = data(:, 13);

-->moyennes = zeros(1, 4);

-->moyennes(1) = mean(addiction(sommeil < 5));

-->moyennes(2) = mean(addiction(sommeil >= 5 & sommeil < 7));

-->moyennes(3) = mean(addiction(sommeil >= 7 & sommeil < 9));

-->moyennes(4) = mean(addiction(sommeil >= 9));

-->disp(moyennes);

   8.2758621   7.5333333   5.2878788   4.1875

-->clf();

-->bar(moyennes);

-->xtitle("Score d''addiction en fonction de la durée de sommeil");

-->ylabel("Score moyen d''addiction");

-->axes = gca();

-->axes.x_ticks.labels = ["<5h", "5-7h", "7-9h", ">9h"]';

-->show_window();
