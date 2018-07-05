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

x = linspace(36,42,201);
h = heaviside(x, 42);
plot(x, h, 'LineWidth', 3, 'Color', 'b');
hold on;

x = linspace(42.001,48,201);
h = heaviside(x, 42);
plot(x, h, 'LineWidth', 3, 'Color', 'b');

print -GraphicsAlphaBits=4 "step42.png"