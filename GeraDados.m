function [x,yd] = GeraDados(numQ,numT,numH)
    %% Iniciando as variáveis
    x = [];
    yd = [];
    numT = numT/4;
    numH = numH/2;
    %% Gerar os quadrados com maior numero de pequenos em comparação aos grandes
    for i=1:1:round(numQ*0.3)
        [X,Yd] = GeraQuadrado(1);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.25)
        [X,Yd] = GeraQuadrado(2);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.20)
        [X,Yd] = GeraQuadrado(3);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.1)
        [X,Yd] = GeraQuadrado(4);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.05)
        [X,Yd] = GeraQuadrado(5);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.04)
        [X,Yd] = GeraQuadrado(6);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.03)
        [X,Yd] = GeraQuadrado(7);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.02)
        [X,Yd] = GeraQuadrado(8);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numQ*0.01)
        [X,Yd] = GeraQuadrado(9);
        x = [x X];
        yd = [yd Yd];
    end
    %% Gerar todos os triangulos com maior numero de triangulos pequenos em comparação aos grandes
    for i=1:1:round(numT*0.3)
        [X,Yd] = GeraTriangulo(1);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.25)
        [X,Yd] = GeraTriangulo(2);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.2)
        [X,Yd] = GeraTriangulo(3);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.1)
        [X,Yd] = GeraTriangulo(4);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.05)
        [X,Yd] = GeraTriangulo(5);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.04)
        [X,Yd] = GeraTriangulo(6);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.03)
        [X,Yd] = GeraTriangulo(7);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.02)
        [X,Yd] = GeraTriangulo(8);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numT*0.01)
        [X,Yd] = GeraTriangulo(9);
        x = [x X];
        yd = [yd Yd];
    end
    %% Gerar todos os hexagonos com maior numero de hexagonos pequenos em compração aos grandes
    for i=1:1:round(numH*0.6)
        [X,Yd] = GeraHexagono(1);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numH*0.3)
        [X,Yd] = GeraHexagono(2);
        x = [x X];
        yd = [yd Yd];
    end
    for i=1:1:round(numH*0.1)
        [X,Yd] = GeraHexagono(3);
        x = [x X];
        yd = [yd Yd];
    end
    
end