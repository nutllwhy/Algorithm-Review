function a = a(x)
T = [160;170;190;145;158;130];
t = [90 90 50 50 62 40; 40 105 80 0 65 50;50 95 90 60 50 46;80 80 0 65 45 55; 60 85 60 35 70 0];
xt = x*t;
k = sum(xt,2);
flag = 1;

for i = 1:6
    if k(i,1)>T(i,1)
        flag = flag * 1;
    else
        flag = flag * 0;
    end
end

if flag == 1
    a = T - k;
else
    a = 0;
end
        
