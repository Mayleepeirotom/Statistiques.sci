pays = data(:,5);
premierspays = ["Bangladesh", "India", "USA", "UK", "Canada", "Australia", "Germany", "Brazil", "Japan", "South Korea"];

n = size(premierspays, 2);

effectifs = zeros(1, n);

for i = 1:n
    effectifs(i) = sum(pays == premierspays(i));
end

disp([premierspays' string(effectifs')], "Pays et effectifs");

bar(effectifs);

xtitle("Nombre d etudiants par pays (Top 10)");