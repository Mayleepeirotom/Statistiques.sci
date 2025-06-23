-->plateformes_cibles = ["TikTok", "Instagram", "Facebook", "Twitter", "YouTube", "LinkedIn", "Snapchat"];

-->temps_txt = data(:,6);

-->plateformes_raw = data(:,7); 

-->plateformes = stripblanks(plateformes_raw);

-->n = size(temps_txt, 1);

-->temps = zeros(n, 1);

-->for i = 1:n
-->    temps(i) = evstr(temps_txt(i));
-->end

-->nb = size(plateformes_cibles, 2);

-->moyennes = zeros(1, nb);

-->for i = 1:nb
-->    indices = find(plateformes == plateformes_cibles(i));
-->    if size(indices, "*") > 0 then
-->        moyennes(i) = mean(temps(indices));
-->    else
-->        moyennes(i) = 0; 
-->    end
-->end

-->resultats = [plateformes_cibles' string(moyennes')];

-->disp(resultats, "Temps moyen ciblé par réseau");

  "TikTok"     "5.3461039"
  "Instagram"  "4.8722892"
  "Facebook"   "4.5073171"
  "Twitter"    "4.87"     
  "YouTube"    "4.08"     
  "LinkedIn"   "2.5190476"
  "Snapchat"   "5.0923077"

  "Temps moyen ciblé par réseau"

-->scf(0); clf();

-->bar(moyennes);

-->xtitle("Temps moyen d’utilisation par réseau social (h/jour)");
