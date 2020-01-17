function [X,Yd] = GeraQuadrado(tam)
    M = zeros(10);
    l = round((rand()*9+1)-tam);
    c = round((rand()*9+1)-tam);
    while(c<=0)
        c = round((rand()*9+1)-tam);
    end
    while(l<=0)
        l = round((rand()*9+1)-tam);
    end
    M(l,c) = 1;
    for i = 1:1:tam;
        M(l+i,c) = 1;
        M(l,c+i) = 1;
        M(l+i,c+tam) = 1;
        M(l+tam,c+i) = 1;
    end
    X = [];
    Yd = [];
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X = [X;M(:,i)];
    end
    Yd = [Yd,[1;0;0]];
end

