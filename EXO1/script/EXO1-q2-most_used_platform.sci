
-->platforms = (data(:,7));

-->

-->platforms_uniques = unique(platforms);

-->

-->effectifs = zeros(size(platforms_uniques, 1), 1);

-->

-->for i = 1:size(platforms_uniques, 1)
-->    effectifs(i) = sum(platforms == platforms_uniques(i));
-->end

-->

-->[eff_trie, indices] = gsort(effectifs, "g");

-->

-->disp("Plateforme   Effectif");

  "Plateforme   Effectif"

-->for i = 1:length(indices)
-->    disp(platforms_uniques(indices(i)) + "   " + string(eff_trie(i)));
-->end

  "Instagram   249"

  "TikTok   154"

  "Facebook   123"

  "WhatsApp   54"

  "Twitter   30"

  "LinkedIn   21"

  "WeChat   15"

  "Snapchat   13"

  "KakaoTalk   12"

  "LINE   12"

  "VKontakte   12"

  "YouTube   10"
