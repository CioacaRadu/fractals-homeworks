function kcurve(A,B,n,max)    %curba lui Koch intre punctele A si B

    if n < max %daca nu am atins pasul final, gasesc cele 3 puncte intermediare
        
        M.x=(2*A.x+B.x)/3;
        M.y=(2*A.y+B.y)/3;

        N.x=(A.x+B.x)/2-(B.y-A.y)/(2.0*sqrt(3.0));
        N.y=(A.y+B.y)/2+(B.x-A.x)/(2.0*sqrt(3.0));

        O.x=(2*B.x+A.x)/3;
        O.y=(2*B.y+A.y)/3;

        kcurve(A,M,n+1,max); % apel recursiv intre noile puncte
        kcurve(M,N,n+1,max);
        kcurve(N,O,n+1,max);
        kcurve(O,B,n+1,max);

    else %cand am ajuns la ultimul nivel, incep sa desenez

        figure(1);
        hold on
        plot([A.x B.x],[A.y B.y],'LineWidth',1.5,'Color','r'); 
    end

end