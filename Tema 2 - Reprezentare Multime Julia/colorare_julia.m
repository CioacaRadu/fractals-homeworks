%Colorare multime Julia - Cioaca Radu, Master CS I
close all
clear all
clc

C = 0.1 + 0.1i; %Constanta C

x = linspace(-2,2,1000);
y = linspace(-2,2,1000);

it_max = 50; %numarul maxim de iteratii acceptabil
I = zeros(length(x),length(y)); %initializare imagine

for xi = 1:length(x) %pentru fiecare punct din planul definiti initial
   
    for yi = 1:length(y)
        
        z = complex(x(xi),y(yi)); %generez un numar complex
    
        for k = 1:it_max 
            
            z = z^2 + C; 
            
            if( abs(z) < 2 ) % daca inca sunt in D(2,0)
                
                I(xi,yi) = I(xi,yi) + 1; %incrementez culoarea din imagine
                
            else
                
                break;               % sunt in afara D(2,0) 
                
            end
        end
    end
    
end

imagesc(I);
title('Julia Set pentru $c=0.0232 + 0.768i$','FontSize',12,'interpreter','latex');
axis off