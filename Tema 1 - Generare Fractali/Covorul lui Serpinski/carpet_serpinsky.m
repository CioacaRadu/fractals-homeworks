%Covorul lui Serpinsky, Cioaca Radu Master CS I
close all;
clear all;
clc

M.x = 0; M.y = 20; %patratul initial pentru inceput
N.x = 20; N.y = 20;
O.x = 20; O.y = 0;
P.x = 0; P.y = 0;

scarpet(M,N,O,P,1,5) % patratul initial, iteratia recursiva curenta si numarul de iteratii ceruti