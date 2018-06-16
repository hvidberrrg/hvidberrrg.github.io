[X,Y,Z] = peaks;
figure
contour(X,Y,Z,20)
meshc (X, Y, Z);

print -GraphicsAlphaBits=4 "multiple_minima.png"