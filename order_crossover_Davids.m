function[david_one,david_two] = order_crossover_Davids(pred1,pred2)

%pred1 = randperm(18,18);
%pred2 = randperm(18,18);
%pred1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
%pred2 = [18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1];

david_one = zeros(1,18);
david_two = zeros(1,18);
t_one = zeros(1,18);
t_two = zeros(1,18);
O_one = zeros(1,12);
O_two = zeros(1,12);

%ran_dd = randi(12);
ran_dd = 8;
ran_da = ran_dd + 6;
ran_db = 18-ran_da;
ran_dc = 12-ran_db;

for dvd = 1:ran_db
    t_one(dvd) = pred1(ran_da+dvd); 
    t_two(dvd) = pred2(ran_da+dvd);
end

for dvda = 1:ran_da
    t_one(ran_db + dvda) = pred1(dvda);
    t_two(ran_db + dvda) = pred2(dvda);
end    
%disp(t_one)
%disp(t_two)
for dvdc = 1:6
    david_one(ran_dd+dvdc) = pred2(ran_dd+dvdc);
    david_two(ran_dd+dvdc) = pred1(ran_dd+dvdc);
end

v_a = 1;
v_b = 1;
for dvdb = 1:18
    ex_tind2 = any(david_one(:) == t_one(dvdb));
    ex_tind1 = any(david_two(:) == t_two(dvdb));
    if ex_tind2 == 0
        O_one(v_a) = t_one(dvdb);
        v_a = v_a + 1;
    end
    if ex_tind1 == 0
        O_two(v_b) = t_two(dvdb);
        v_b = v_b + 1;
    end    
end

for dvdc = 1:ran_db
    david_one(ran_da+dvdc) = O_one(dvdc);
    david_two(ran_da+dvdc) = O_two(dvdc);
end    

for dvdd = 1:ran_dc
    david_one(dvdd) = O_one(ran_db+dvdd);
    david_two(dvdd) = O_two(ran_db+dvdd);
end
%disp(david_one)
%disp(david_two)
for dvde = 1:18
    for dvdf = 1:18
        if david_one(dvde) == david_one(dvdf) && dvde ~= dvdf
            disp('fatal error davids one zone')
        end    
        if david_two(dvde) == david_two(dvdf) && dvde ~= dvdf
            disp('fatal error davids two zone')
        end    
    end   
end    
end