clear all
close all
more off


tx = ty = linspace (-20, 20, 45);
[xx, yy] = meshgrid (tx, ty);
tz = 6.*(xx .^ 2) + 4.*(yy .^ 2) - 4.*xx.*yy
meshc (tx, ty, tz);
hold on;

tx = ty = linspace (-20, 20, 10);
[x, y] = meshgrid (tx, ty) %The origins of the values of the vector field.
u = 12.*x -4.*y %The values of the vector field to plot.
v = 8.*y - 4.*x
quiver (x, y, u, v, 1.5, 'color', 'r');

xlabel ('x', 'FontName','Times New Roman');
ylabel ('y', 'FontName','Times New Roman');
zlabel ('f(x,y) = 6x^{2} + 4y^{2} - 4xy', 'interpreter', 'tex', 'FontName','Times New Roman');
%title ('f(x,y) = 6x^{2} + 4y^{2} - 4xy', 'interpreter', 'tex', 'FontName','Times New Roman');

print -GraphicsAlphaBits=4 "gradient_vector_field.png"
  