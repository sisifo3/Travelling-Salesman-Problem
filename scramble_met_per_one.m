function[anser] = scramble_met_per_one(gen_loc_rep)

%gen_loc_rep = randperm(18,18);

gen_loc_sc = zeros(1,18);
mat_rep_one = zeros(1,12);
mat_rep_two = zeros(1,6);

for sma = 1:1
    
    nsm = randi(12);
    %nsm = 3;
    nsma = nsm + 6;
    nsmb = 18-nsma;
    for smb = 1:nsm
        mat_rep_one(smb) = gen_loc_rep(smb);
    end
    for smc = 1:6
        mat_rep_two(smc) = gen_loc_rep(smc+nsm);
    end
    for smd = 1:nsmb
        mat_rep_one(smd+nsm) = gen_loc_rep(nsma + smd);
    end
    
    nsm_m = randi(12);
    %nsm_m = 5;
    nsm_ma = nsm_m + 6; 
    nsm_mb = 18-nsm_ma;
    for sme = 1:nsm_m
        gen_loc_sc(sme) = mat_rep_one(sme);
    end
    for smf = 1:6
        gen_loc_sc(smf+nsm_m) = mat_rep_two(smf);
    end
    for smg = 1:nsm_mb
        gen_loc_sc(nsm_ma+smg) = mat_rep_one(smg+nsm_m);
    end
    
end


anser = gen_loc_sc;        


end