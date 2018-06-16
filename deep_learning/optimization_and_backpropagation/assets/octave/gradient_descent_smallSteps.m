clear all
close all
more off

tx = ty = linspace (-20, 20, 45);
[xx, yy] = meshgrid (tx, ty);
tz = 6.*(xx .^ 2) + 4.*(yy .^ 2) - 4.*xx.*yy

contour (tx, ty, tz, 25)
hold on;

x=-20;
y=0;
# Sloooow
#stepsize=0.005;
# Bulls eye
stepsize=0.02;
# Shaky
#stepsize=0.1;
# Wild
#stepsize=0.15;
for i = 1:20
  printf("Loop %i \n", i);

  dx=stepsize*(12.*x -4.*y);
  dy=stepsize*(8.*y - 4.*x);
  printf("x=%i, y=%i, dx=%i, dy=%i \n", x,y,dx,dy);
  quiver(x,y,-dx,-dy,0, 'Color', 'r', 'MaxHeadSize', 0.05, 'LineWidth', 2.0, 'Marker', 'o', 'MarkerFaceColor', 'r');
  hold on
  x=x-dx;
  y=y-dy;
endfor

print -GraphicsAlphaBits=4 "test.png"


