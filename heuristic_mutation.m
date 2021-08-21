function[cell_muted] = heuristic_mutation(cell_for_mut,dista_pid)
%in this function acept the cell and back 
% a cell with the 10 with mutation.

len_hm = length(cell_for_mut);
len_por = len_hm/2;
len_ph = len_hm - len_por;

for hma = 1:len_por
    one_man = cell_for_mut{len_ph+hma,1};
    [one_man_mut] = permu_loc(one_man,dista_pid);
    cell_for_mut(len_ph+hma,:) = one_man_mut(1,:);
end

[cell_for_mut] = ord_insertion(cell_for_mut);

cell_muted = cell_for_mut;


end