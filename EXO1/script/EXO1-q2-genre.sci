 genres = (data(:,3)); 

 genres_uniques = unique(genres);

 effectifs = zeros(size(genres_uniques, 1), 1);
 
 for i = 1:size(genres_uniques, 1)
     effectifs(i) = sum(genres == genres_uniques(i));
 end

 [eff_trie, indices] = gsort(effectifs, "g");

 disp("Genre   Effectif");

  "Genre   Effectif"

 for i = 1:length(indices)
     disp(genres_uniques(indices(i)) + "   " + string(eff_trie(i)));
 end

  "Female   353"

  "Male   352"
