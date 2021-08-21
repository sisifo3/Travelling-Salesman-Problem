function[cell_out] = make_dist_apt(cell_in,dista_pid)

len_hg = length(cell_in);

%una vez generada la poblacion, buscamos sus distancias y las sumamos.
for ri = 1:len_hg
    ce = cell_in{ri,1};
    a = zeros(1,18);
    a(1) = dista_pid(ce(1),ce(2));
    a(2) = dista_pid(ce(2),ce(3));
    a(3) = dista_pid(ce(3),ce(4));
    a(4) = dista_pid(ce(4),ce(5));
    a(5) = dista_pid(ce(5),ce(6));
    a(6) = dista_pid(ce(6),ce(7));
    
    a(7) = dista_pid(ce(7),ce(8));
    a(8) = dista_pid(ce(8),ce(9));
    a(9) = dista_pid(ce(9),ce(10));
    a(10) = dista_pid(ce(10),ce(11));
    a(11) = dista_pid(ce(11),ce(12));
    a(12) = dista_pid(ce(12),ce(13));
    
    a(13) = dista_pid(ce(13),ce(14));
    a(14) = dista_pid(ce(14),ce(15));
    a(15) = dista_pid(ce(15),ce(16));
    a(16) = dista_pid(ce(16),ce(17));
    a(17) = dista_pid(ce(17),ce(18));
    a(18) = dista_pid(ce(18),ce(1));
    
    sum_a = sum(a);
    cell_in{ri,2} = sum_a;
end

% es necesario ordenar con la fittnes function.
%fitness = 1/cost;
for tre = 1:len_hg
    fitness = 1/cell_in{tre,2};
    cell_in{tre,3} = fitness;
end
[cell_in] = ord_insertion(cell_in);
cell_out = cell_in;
end