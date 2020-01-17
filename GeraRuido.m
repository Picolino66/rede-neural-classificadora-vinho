function [x] = GeraRuido(X)
    x = X;
    [L,C] = size(x);
    for c = 1:1:C
        contador = 0;
        for l = 1:1:L
            if(x(l,c)==1)
                contador = contador+1;
            end
        end
        chosen = round(1+(contador-1)*rand());
        contador=0;
        for l = 1:1:L
            if(x(l,c)==1)
                contador = contador+1;
            end
            if(contador==chosen)
                x(l,c) = 0;
            end
        end
    end
end