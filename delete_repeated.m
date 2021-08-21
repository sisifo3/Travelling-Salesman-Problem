function[cell_nor] =  delete_repeated(cell_act,dista_pid)

%disp(cell_act)
%dista_pid = readtable('dist_f.csv');
%dista_pid = table2array(dista_pid);

cookie_loc = zeros(18,1);

len_dt = length(cell_act);
%disp(len_dt)
for dtl = 1:len_dt
    for dtla = 1:len_dt
        exist_cookie = any(cookie_loc(:) == dtla);
        if cell_act{dtl,2} == cell_act{dtla,2} && dtl ~= dtla && exist_cookie == 0
            cookie_loc(dtl) = dtl;
            gen_loc_rep = cell_act{dtla,1};
            %disp(gen_loc_rep)
            [gen_mut] = scramble_met_per_one(gen_loc_rep);
            cell_act{dtla,1} = gen_mut;    
        end
    end  
     %disp(dtl)

end
[cell_act] = make_dist_apt(cell_act,dista_pid);
%disp(cell_act)
cell_nor = cell_act;
end