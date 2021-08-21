function[one_man_mut] = permu_loc(one_man,dista_pid)

%one_man = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
rni = randi(12);
rne = rni+6;
rna = 18-rne;

one_man_one = zeros(1,6);
one_man_two = zeros(1,12);
one_man_per = zeros(720,18);
cell_cromut = zeros(720,3);
cell_cromut = num2cell(cell_cromut);

for om = 1:rni
    one_man_two(om) = one_man(om);
end
for oma = 1:6
    one_man_one(oma) = one_man(rni+oma);
end

for omb = 1:rna
    one_man_two(omb+rni) = one_man(rne+omb);
end

one_man_three = perms(one_man_one);

for omc = 1:720
    for omd = 1:rni
        one_man_per(omc,omd) = one_man_two(omd);
    end  
    for ome = 1:6
        one_man_per(omc,rni+ome) = one_man_three(omc,ome);
    end   
    for omf = 1:rna
        one_man_per(omc,rne+omf) = one_man_two(rni+omf);
    end    
    cell_cromut{omc,1} = one_man_per(omc,:);
end

[cell_cromut] = make_dist_apt(cell_cromut,dista_pid);

one_man_mut = cell_cromut(1,:);

end  