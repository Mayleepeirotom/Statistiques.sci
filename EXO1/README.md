# Exercice 1 :

## Table des matières

1. [Statistiques descriptives des variables numériques](#1-statistiques-descriptives-des-variables-numériques)  
2. [Effectifs des variables qualitatives : le genre](#2-effectifs-des-variables-qualitatives-le-genre)  
3. [Effectifs des variables qualitatives : le niveau scolaire](#3-effectifs-des-variables-qualitatives-le-niveau-scolaire)  
4. [Effectifs des variables qualitatives : plateformes les plus utilisées](#4-effectifs-des-variables-qualitatives-plateformes-les-plus-utilisees)  
5. [Effectifs des variables qualitatives : performance académique](#5-effectifs-des-variables-qualitatives-performance-academique)  
6. [Effectifs des variables qualitatives : relationship](#6-effectifs-des-variables-qualitatives-relationship)  
7. [Effectifs des variables qualitatives : countries](#7-effectifs-des-variables-qualitatives-countries)  


---
Avant de commencer, il faut se rendre dans le dossier dans lequel se situe le fichier [data](../data.csv) qui contient toutes les données sans en-tête qui permettront d'effectuer nos analyses.

On entre les commandes 
```
-->csv = csvRead('data.csv',',');                    
```
On met dans la variable csv tout le contenu quantitatif du fichier de data.
```                                
-->data = csvRead('data.csv', ",", [], "string"); 
```
Avec cette ligne là, on met dans la variable data les valeurs quantitatives telles que le genre, le niveau scolaire, etc.<br>
En fonction de la consigne, il faudra utiliser soit csv, soit data.

## 1 Statistiques descriptives des variables numériques
```scilab

colonnes = [2, 6, 9, 10, 12, 13];
noms = ["Age", "DailyUsage", "SleepHours", "MentalHealth", "Conflicts", "Addicted"];

resultats = ["Nom", "Moyenne", "Ecart-type", "Min", "Q1", "Q2", "Q3", "Max"];

for k = 1:length(colonnes)
    i = colonnes(k);
    col = csv(:, i);
    col = col(~isnan(col)); 

    if length(col) >= 3 then
        m = mean(col);
        s = stdev(col);
        mi = min(col);
        q = quart(col);
        ma = max(col);
        ligne = [noms(k), string(m), string(s), string(mi), ...
                 string(q(1)), string(q(2)), string(q(3)), string(ma)];
    end

    resultats = [resultats; ligne];
end

disp(resultats);

  "Nom"           "Moyenne"    "Ecart-type"  "Min"  "Q1"   "Q2"   "Q3"   "Max"
  "Age"           "20.659574"  "1.3992175"   "18"   "19"   "21"   "22"   "24" 
  "DailyUsage"    "4.9187234"  "1.2573945"   "1.5"  "4.1"  "4.8"  "5.8"  "8.5"
  "SleepHours"    "6.8689362"  "1.126848"    "3.8"  "6"    "6.9"  "7.7"  "9.6"
  "MentalHealth"  "6.2269504"  "1.1050555"   "4"    "5"    "6"    "7"    "9"  
  "Conflicts"     "2.8496454"  "0.9579678"   "0"    "2"    "3"    "4"    "5"  
  "Addicted"      "6.4368794"  "1.5871649"   "2"    "5"    "7"    "8"    "9"  

  ```
Ce tableau indique les moyennes, écart-types, minimum, maximum et les quartiles de chaque série statistiques contenant des données quantitatives.

## 2 Effectifs des variables qualitatives: le genre

  ```scilab

genres = (data(:,3)); 


genres_uniques = unique(genres);

effectifs = zeros(size(genres_uniques, 1), 1);

for i = 1:size(genres_uniques, 1)
    effectifs(i) = sum(genres == genres_uniques(i));
end

[eff_trie, indices] = gsort(effectifs, "g");


disp("Genre   Effectif");

for i = 1:length(indices)
    disp(genres_uniques(indices(i)) + "   " + string(eff_trie(i)));
end
```
On obtient: Female: 353 et ensuite Male: 352, ceci correspond aux effectifs de la colonne **Genre** dans l'ordre décroissant.


## 3 Effectifs des variables qualitatives: le niveau scolaire
```scilab
levels = (data(:,4));
levels_uniques = unique(levels);
effectifs = zeros(size(levels_uniques, 1), 1);
for i = 1:size(levels_uniques, 1)
     effectifs(i) = sum(levels == levels_uniques(i));
end
[eff_trie, indices] = gsort(effectifs, "g");
disp("Niveau d études   Effectif");
for i = 1:length(indices)
     disp(levels_uniques(indices(i)) + "   " + string(eff_trie(i)));
end
```
Et nous obtenons: Undergraduate: 353, suivi de Graduate: 325, suivi de High School: 27 : effectifs de la colonne **Academic level** dans l'ordre décroissant.


## 4 Effectifs des variables qualitatives: plateformes les plus utilisees
```scilab

platforms = (data(:,7));
platforms_uniques = unique(platforms);
effectifs = zeros(size(platforms_uniques, 1), 1);
for i = 1:size(platforms_uniques, 1)
    effectifs(i) = sum(platforms == platforms_uniques(i));
end
[eff_trie, indices] = gsort(effectifs, "g");
disp("Plateforme   Effectif");
for i = 1:length(indices)
    disp(platforms_uniques(indices(i)) + "   " + string(eff_trie(i)));
end

```
La plateforme la plus utilisée est Instagram, avec un effectif de 249. Elle est suivie de TikTok (154) et de Facebook (123). Les autres plateformes, comme WhatsApp (54), Twitter (30), ou LinkedIn (21), sont moins fréquemment citées. YouTube est la moins mentionnée, avec un effectif de 10


  ## 5 Effectifs des variables qualitatives: performance-academique
  ```scilab
  affect = (data(:,8));
affect_uniques = unique(affect);
effectifs = zeros(size(affect_uniques, 1), 1);

for i = 1:size(affect_uniques, 1)
    effectifs(i) = sum(affect == affect_uniques(i));
end

[eff_trie, indices] = gsort(effectifs, "g");

for i = 1:length(indices)
    current_value = affect_uniques(indices(i));

    if current_value == "Yes" then
        label = "Affecte la performance academique";
    elseif current_value == "No" then
        label = "N_affecte pas la performance academique";
    else
        label = "Valeur inconnue : " + current_value;
    end

    disp(label + "   " + string(eff_trie(i)));
end
```
La majorité des répondants, soit 453 personnes, estiment que l’usage des réseaux sociaux affecte leur performance académique. En revanche, 252 personnes considèrent que cela n’affecte pas leur performance académique.


## 6 Effectifs des variables qualitatives: relationship

```scilab
relationships = stripblanks(strsubst(data(:,11), """", "")); 

relationships_uniques = unique(relationships);

effectifs = zeros(size(relationships_uniques, 1), 1);

for i = 1:size(relationships_uniques, 1)
    effectifs(i) = sum(relationships == relationships_uniques(i));
end

[eff_trie, indices] = gsort(effectifs, "g");

disp("Relationship   Effectif");

for i = 1:length(indices)
    disp(relationships_uniques(indices(i)) + "   " + string(eff_trie(i)));
end
```
La majorité des participants se déclarent célibataires, avec un effectif de 384. Ils sont suivis par 289 personnes en relation amoureuse, tandis que 32 répondants décrivent leur situation comme compliquée.

## 7 Effectifs des variables qualitatives: countries
```scilab
countries = (data(:,5)); 
countries_uniques = unique(countries);
effectifs = zeros(size(countries_uniques, 1), 1);

for i = 1:size(countries_uniques, 1)
    effectifs(i) = sum(countries == countries_uniques(i));
end

[eff_trie, indices] = gsort(effectifs, "g");

disp("Pays   Effectif");

for i = 1:length(indices)
    disp(countries_uniques(indices(i)) + "   " + string(eff_trie(i)));
end
```
Les répondants de l’enquête viennent d’une grande diversité de pays. L’Inde est le pays le plus représenté avec 53 participants, suivie des États-Unis (40) et du Canada (34). Plusieurs pays européens comme la France, le Danemark, l’Irlande, l’Espagne, la Suisse et la Turquie comptent chacun 27 répondants. On observe également une présence significative d'autres pays comme le Royaume-Uni (22), l’Italie, le Japon et la Russie (21 chacun).

D’autres pays d’Asie du Sud, tels que le Bangladesh, le Népal, le Pakistan et le Sri Lanka, comptent chacun 19 participants.

Enfin, de très nombreux pays n’ont qu’un seul représentant
  