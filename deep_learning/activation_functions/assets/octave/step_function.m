function h = heaviside(x, t) 
  # Loop thru all elements of the vector x
  for i = 1 : length(x) 
    if (x(i) <= t) 
      h(i)=0; 
    else 
      h(i)=1; 
    endif 
  endfor
endfunction 

x = linspace(-6,0,201);
h = heaviside(x, 0);
plot(x, h, 'LineWidth', 3, 'Color', 'b');
hold on;

x = linspace(0.001,6,201);
h = heaviside(x, 0);
plot(x, h, 'LineWidth', 3, 'Color', 'b');

print -GraphicsAlphaBits=4 "step0.png"