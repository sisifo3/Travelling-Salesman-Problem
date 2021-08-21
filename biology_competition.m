function[more_stronge] = biology_competition(cell_pred_desc,dista_pid)
%disp(cell_pred_desc)


[cell_pred_desc] =  delete_repeated(cell_pred_desc,dista_pid);

%dista_pid = readtable('dist_f.csv');
%dista_pid = table2array(dista_pid);

[cell_out] = make_dist_apt(cell_pred_desc,dista_pid);
%disp(cell_out)
len_bc = length(cell_out);
len_bc_two = len_bc/2;
cell_str = zeros(len_bc_two,3);
cell_str = num2cell(cell_str);

for str = 1:len_bc_two
    cell_str(str,:) = cell_out(str,:);
end    


more_stronge = cell_str;



end