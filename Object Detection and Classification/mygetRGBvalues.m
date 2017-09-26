function [red, green, blue] = RGB(x)

[xrows, xcols, xplanes] = size( x );

red = [];
green = [];
blue = [];

for i=1:xrows
    for j=1:xcols
        red = [red x(i,j,1)];
        green = [green x(i,j,2)];
        blue = [blue x(i,j,3)];
    end
end

