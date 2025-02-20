x = 1:10
y = zeros(1, length(x));

for idx = 1:length(x)
  y(idx) = sqrt(x(idx))
end

disp('Valores de y (raiz quadrada de x): ')
disp(y)
plot(x,y)
