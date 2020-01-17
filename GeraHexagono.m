function [X,Yd] = GeraHexagono(tam)
    M = zeros(10);
    X = [];
    Yd = [];
    % Horizontal
    l = round((rand()*9+1)-tam);
    c = round((rand()*9+1)-tam);
    while(c<=0 | c+3*tam>10)
        c = round((rand()*9+1)-3*tam);
    end
    while(l-tam<=0)
        l = round((rand()*9+1)-tam);
    end
    M(l,c) = 1;
    for i = 1:1:tam
        M(l+i,c+i) = 1;
        M(l-i,c+i) = 1;
        M(l+tam,c+tam+i) = 1;
        M(l-tam,c+tam+i) = 1;
        M(l+1-i,c+3*tam+1-i) = 1;
        M(l-1+i,c+3*tam+1-i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X = [X;M(:,i)];
    end
    Yd = [Yd,[0;0;1]];
    % Vertical
    X2 = [];
    M = zeros(10);
    l = round((rand()*9+1)-tam);
    c = round((rand()*9+1)-tam);
    while(l<=0 | l+3*tam>10)
        l = round((rand()*9+1)-3*tam);
    end
    while(c-tam<=0)
        c = round((rand()*9+1)-tam);
    end
    M(l,c) = 1;
    for i = 1:1:tam
        M(l+i,c+i) = 1;
        M(l+i,c-i) = 1;
        M(l+tam+i,c+tam) = 1;
        M(l+tam+i,c-tam) = 1;
        M(l+3*tam+1-i,c+1-i) = 1;
        M(l+3*tam+1-i,c-1+i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X2 = [X2;M(:,i)];
    end
    Yd = [Yd,[0;0;1]];
    X = [X X2];
end