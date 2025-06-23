
--> countries = (data(:,5)); 

--> countries_uniques = unique(countries);

--> effectifs = zeros(size(countries_uniques, 1), 1);

--> for i = 1:size(countries_uniques, 1)
-->      effectifs(i) = sum(countries == countries_uniques(i));
--> end

--> [eff_trie, indices] = gsort(effectifs, "g");

--> disp("Pays   Effectif");

  "Pays   Effectif"


--> for i = 1:length(indices)
-->     disp(countries_uniques(indices(i)) + "   " + string(eff_trie(i)));
--> end

  "India   53"

  "USA   40"

  "Canada   34"

  "Denmark   27"

  "France   27"

  "Ireland   27"

  "Mexico   27"

  "Spain   27"

  "Switzerland   27"

  "Turkey   27"

  "UK   22"

  "Italy   21"

  "Japan   21"

  "Russia   21"

  "Bangladesh   20"

  "Maldives   19"

  "Nepal   19"

  "Pakistan   19"

  "Sri Lanka   19"

  "China   16"

  "Poland   16"

  "Australia   14"

  "Germany   14"

  "South Korea   13"

  "Brazil   8"

  "Finland   8"

  "Malaysia   8"

  "Netherlands   8"

  "New Zealand   8"

  "Singapore   8"

  "UAE   8"

  "Afghanistan   1"

  "Albania   1"

  "Andorra   1"

  "Argentina   1"

  "Armenia   1"

  "Austria   1"

  "Azerbaijan   1"

  "Bahamas   1"

  "Bahrain   1"

  "Belarus   1"

  "Belgium   1"

  "Bhutan   1"

  "Bolivia   1"

  "Bosnia   1"

  "Bulgaria   1"

  "Chile   1"

  "Colombia   1"

  "Costa Rica   1"

  "Croatia   1"

  "Cyprus   1"

  "Czech Republic   1"

  "Ecuador   1"

  "Egypt   1"

  "Estonia   1"

  "Georgia   1"

  "Ghana   1"

  "Greece   1"

  "Hong Kong   1"

  "Hungary   1"

  "Iceland   1"

  "Indonesia   1"

  "Iraq   1"

  "Israel   1"

  "Jamaica   1"

  "Jordan   1"

  "Kazakhstan   1"

  "Kenya   1"

  "Kosovo   1"

  "Kuwait   1"

  "Kyrgyzstan   1"

  "Latvia   1"

  "Lebanon   1"

  "Liechtenstein   1"

  "Lithuania   1"

  "Luxembourg   1"

  "Malta   1"

  "Moldova   1"

  "Monaco   1"

  "Montenegro   1"

  "Morocco   1"

  "Nigeria   1"

  "North Macedonia   1"

  "Norway   1"

  "Oman   1"

  "Panama   1"

  "Paraguay   1"

  "Peru   1"

  "Philippines   1"

  "Portugal   1"

  "Qatar   1"

  "Romania   1"

  "San Marino   1"

  "Serbia   1"

  "Slovakia   1"

  "Slovenia   1"

  "South Africa   1"

  "Sweden   1"

  "Syria   1"

  "Taiwan   1"

  "Tajikistan   1"

  "Thailand   1"

  "Trinidad   1"

  "Ukraine   1"

  "Uruguay   1"

  "Uzbekistan   1"

  "Vatican City   1"

  "Venezuela   1"

  "Vietnam   1"

  "Yemen   1"
