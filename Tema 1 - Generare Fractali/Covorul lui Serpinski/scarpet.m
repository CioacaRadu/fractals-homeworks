function scarpet(M,N,O,P,n,max)

a = norm([M.x M.y]-[N.x N.y]) / 3; %divide by 3 the length

if n < max
    
    %FIND ALL THE 9 SUBSQUARES
    [A1,A2,A3,A4] = get_rect(M,a);
    [B1,B2,B3,B4] = get_rect(A2,a);
    [C1,C2,C3,C4] = get_rect(B2,a);
    
    [D1,D2,D3,D4] = get_rect(A4,a);
    [E1,E2,E3,E4] = get_rect(D2,a);
    [F1,F2,F3,F4] = get_rect(E2,a);
    
    [G1,G2,G3,G4] = get_rect(D4,a);
    [H1,H2,H3,H4] = get_rect(G2,a);
    [I1,I2,I3,I4] = get_rect(H2,a);
    
    %RECURSIVE CALLS EXCEPT ON THE CENTER RECTANGLE
    scarpet(A1,A2,A3,A4,n+1,max);
    scarpet(B1,B2,B3,B4,n+1,max);
    scarpet(C1,C2,C3,C4,n+1,max);
    scarpet(D1,D2,D3,D4,n+1,max);
    scarpet(F1,F2,F3,F4,n+1,max);
    scarpet(G1,G2,G3,G4,n+1,max);
    scarpet(H1,H2,H3,H4,n+1,max);
    scarpet(I1,I2,I3,I4,n+1,max);
    
    
    % AT THE END OF THE RECURSIVE CALL, REMOVE THE CENTER RECTANGLE
    SP.x = M.x + a;
    SP.y = M.y - a;
    [E1,E2,E3,E4] = get_rect(SP,a);
    show_rect( E1,E2,E3,E4 )

end

end

