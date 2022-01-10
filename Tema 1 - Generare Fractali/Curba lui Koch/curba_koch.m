%Curba (Segmentul lui Koch) - Cioaca Radu-Andrei, Master CS 1

close all
clear all
clc

A.x = 0 ; %punctele initiale pentru desen
B.x = 10;
A.y = 5;
B.y = 5;

kcurve(A,B,1,6) % functia cu apeluri recrusive
