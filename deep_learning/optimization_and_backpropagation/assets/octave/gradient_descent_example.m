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
#quiver (x, y, u, v, 1.5, 'color', 'r');

xlabel ('x', 'FontName','Times New Roman');
ylabel ('y', 'FontName','Times New Roman');
zlabel ('f(x,y) = 6x^{2} + 4y^{2} - 4xy', 'interpreter', 'tex', 'FontName','Times New Roman');
%title ('f(x,y) = 6x^{2} + 4y^{2} - 4xy', 'interpreter', 'tex', 'FontName','Times New Roman');


x=-20;
y=0;
zoffset=200; # Offset to "lift" the gradient marker above the surface
stepsize=0.02;

filename = "gradient_descent.txt";
fid = fopen (filename, "w");
for i = 1:20
  printf("Loop %i \n", i);
  fprintf(fid, "Loop %i \n", i);

  dx=stepsize*(12.*x -4.*y);
  dy=stepsize*(8.*y - 4.*x);
  z = 6*(x ^ 2) + 4*(y ^ 2) - 4*x*y
  printf("x=%i, y=%i, dx=%i, dy=%i, f(x)=%i \n", x,y,dx,dy,z);
  fprintf(fid,"x=%i, y=%i, dx=%i, dy=%i, f(x)=%i \r\n", x,y,dx,dy,z);
  quiver(x,y,-dx,-dy,0, 'Color', 'r', 'MaxHeadSize', 0.05, 'LineWidth', 2.0, 'Marker', 'o', 'MarkerFaceColor', 'r');
  plot3 (x, y, z + zoffset, ".",'MarkerSize',35, 'Color', 'r');
  hold on
  x=x-dx;
  y=y-dy;
endfor
fclose (fid);

print -GraphicsAlphaBits=4 "gradient_descent_example.png"
  