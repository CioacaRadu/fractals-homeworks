%Colorare multime Mandelbrot - Cioaca Radu, Master CS I
close all
clear all
clc

Rezolutie = 10000;

x = linspace(-2,2,Rezolutie);
y = linspace(-2,2,Rezolutie); %Multimea complexa pentru constanta C

it_max = 50; %numarul maxim de iteratii acceptabil
I = zeros(length(x),length(y)); %initializare imagine

z = 0; % z initial este 0 (mandelbrot)

for xi = 1:length(x) %pentru fiecare punct din planul complex pentru C
   
    for yi = 1:length(y)
        
        C = complex(x(xi),y(yi)); %generez un numar complex C din planul ales
        z = 0; % resetam z in origine
        
        for k = 1:it_max 
            
            z = z^2 + C; % clasic iteration
            
            if( abs(z) < 2 ) % daca inca sunt in D(2,0)
                
                I(xi,yi) = I(xi,yi) + 1; %incrementez culoarea din imagine
                
            else
                
                break;               % sunt in afara D(2,0) opresc
                
            end
        end
    end
    
end

imagesc(I');
title('Mandelbrot Set','FontSize',16,'interpreter','latex');
axis off