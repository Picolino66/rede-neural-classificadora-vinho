function [X,Yd] = GeraTriangulo(tam)
    l = round((rand()*9+1)-tam);
    c = round((rand()*9+1)-tam);
    Yd = [];
    while(c<=0)
        c = round((rand()*9+1)-tam);
    end
    while(l<=0)
        l = round((rand()*9+1)-tam);
    end
    % tipo1
    M = zeros(10);
    X1 = [];
    M(l,c) = 1;
    for i = 1:1:tam;
        M(l+i,c+i) = 1;
        M(l+i,c) = 1;
        M(l+tam,c+i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X1 = [X1;M(:,i)];
    end
    Yd = [Yd,[0;1;0]];
    
    % tipo2
    M = zeros(10);
    X2 = [];
    M(l,c) = 1;
    for i = 1:1:tam;
        M(l+i,c+i) = 1;
        M(l+i,c+tam) = 1;
        M(l,c+i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X2 = [X2;M(:,i)];
    end
    Yd = [Yd,[0;1;0]];
    
    % tipo3
    M = zeros(10);
    X3 = [];
    M(l,c) = 1;
    for i = 1:1:tam;
        M(l,c+i) = 1;
        M(l+i,c) = 1;
        M(l+i,c+tam-i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X3 = [X3;M(:,i)];
    end
    Yd = [Yd,[0;1;0]];
    
    % tipo4
    M = zeros(10);
    X4 = [];
    M(l,c+tam) = 1;
    for i = 1:1:tam;
        M(l+i,c+tam-i) = 1;
        M(l+i,c+tam) = 1;
        M(l+tam,c+i) = 1;
    end
    for i = 1:1:10      %Converte a matriz para um vetor coluna
        X4 = [X4;M(:,i)];
    end
    Yd = [Yd,[0;1;0]];
    X = [X1 X2 X3 X4];
end