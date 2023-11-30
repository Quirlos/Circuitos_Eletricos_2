%Lista 5 - Exercício 10
close all;
clc;
clear;

%Para todos os exercícios, primeiro será determinado o numerador e depois
%será determinado o denominador, para então juntar os dois em uma função
%transferência por meio do comando tf()

%% Letra A
%Gerando as função de transferência
num_a=[200 0];
den_a=conv([1 2], [1 10]); 
sys_a=tf(num_a,den_a)

%Gerando o gráfico de amplitude e fase
figure; %utilizamos o figure pois utilizaremos apenas um código para a questão
%e o comando divide cada gráfico em uma janela distinta
bode(sys_a);
title('Gráfico de Bode - Letra A')


%% Letra B
%Gerando as função de transferência
num_b=[1 10];
den_b=[1 3 50];
sys_b=30*tf(num_b,den_b)

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_b);
title('Gráfico de Bode - Letra B')


%% Letra C
%Devido a complexidade da função, não faremos essa tal qual a letra A e B

syms s %Geramos uma variável simbólica 's'
%Só precisamos gerá-lá uma vez

%Gerando a função de transferência
num_c=10*(s+3);
den_c=(s+2)*(s^2+s+2);
transfer_c=(num_c/den_c); %Para usar o comando tf(), construimos essa função
%para converter para depois usar tf()

%Convertendo a função de transferência simbólica em um modelo de sistema de controle
sys_c=tf(sym2poly(num_c), sym2poly(den_c))

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_c);
title('Gráfico de Bode - Letra C')


%% Letra D

%Gerando a função de transferência
num_d=[0 25];
den_d=[1 4 25];
sys_d=tf(num_d,den_d)

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_d);
title('Gráfico de Bode - Letra D')


%% Letra E

%Gerando a função de transferência
num_e=[9 1.8 9];
den_e=[1 1.2 9 0];
sys_e=tf(num_e,den_e)

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_e);
title('Gráfico de Bode - Letra E')


%% Letra F

%Gerando a função de transferência
num_f=[0 1];
den_f=[1 0 1 0];
sys_f=tf(num_f,den_f)

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_f);
title('Gráfico de Bode - Letra F')


%% Letra G

%Gerando a função de transferência
num_g=[2 2];
den_g=conv([1 2], [1 10])
sys_g=tf(num_g,den_g)

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_g);
title('Gráfico de Bode - Letra G')


%% Letra H

%Gerando a função de transferência
num_h=s;
den_h=((s+2)^2)*(s+1);
transfer_h=(num_h/den_h);

%Convertendo a função de transferência simbólica em um modelo de sistema de controle
sys_h=tf(sym2poly(num_h), sym2poly(den_h))

%Gerando o gráfico de amplitude e fase
figure;
bode(sys_h);
title('Gráfico de Bode - Letra H')