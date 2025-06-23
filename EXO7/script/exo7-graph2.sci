
-->data = csvRead("data.csv", ",", [], "string");

-->

-->add_raw  = stripblanks(strsubst(data(:,13), """", ""));

-->ment_raw = stripblanks(strsubst(data(:,10), """", ""));

-->

-->add_score  = strtod(add_raw);

-->ment_score = strtod(ment_raw);

-->

-->ok = find(~(isnan(add_score) | isnan(ment_score)));

-->AS = add_score(ok);   // 705×1

-->MS = ment_score(ok);  // 705×1

-->

-->n   = size(AS, "r");          // =705

-->j_x = (rand(n, 1) - 0.5) * 0.2;  

-->j_y = (rand(n, 1) - 0.5) * 0.2;  

-->

-->clf();

-->plot(AS + j_x, MS + j_y, 'o');

-->xtitle("Addiction vs Mental Health (jitter)", "Addiction Score", "Mental Health Score");
