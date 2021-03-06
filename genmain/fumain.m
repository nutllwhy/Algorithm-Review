function fumain()
t = [90 90 50 50 62 40; 40 105 80 0 65 50;50 95 90 60 50 46;80 80 0 65 45 55; 60 85 60 35 70 0];
r = [30 19 14 30 31 21; 12 32 24 0 35 25; 9 24 31 32 29 30; 22 15 0 40 22 26; 10 13 19 25 40 0];
h = t;
l = 1 / r;

tic;
clear
clf
popsize = 6; %群体大小(行数)
chromlength = 5; %字符串长度（个体长度）（列数）
pop = initpop(popsize,chromlength); %随机产生初始群体（初始解）
pc=0.5; %交叉概率
pm=0.01; %变异概率

for i=1:200
[objvalue]=calobjvalue(pop);%计算目标函数
fitvalue=calfitvalue(objvalue); %计算群体中每个个体的适应度
[newpop]=selection(pop,fitvalue); %选择算子
[newpop]=crossover(pop,pc); %交叉
[newpop]=mutation(pop,pc); %变异

pop=newpop;
end

plot(i, y(i));

z = sum(sum(x * (0.5 * h + 0.5 * l) .* P));
fprintf(z);

P = calP(x)
    function [resultP] = calP(x) 
    resultP = finverse(a(x) + b(x) + c(x));
    end

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
end
        
function b = b(x)
xr = x*r;
if (sum(xr(:))>400)
    b = (sum(xr(:))) - 400;
else
    b = 0;
end
end

function c = c(x)
c = (sum(x(:))) / 6;
end
