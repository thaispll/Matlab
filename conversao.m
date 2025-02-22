function f =  conversao(celsius)
  f = (celsius * 9/5) + 32;
end
while true
    celsius = input('Digite a temperatura em ºC (ou "s" para sair): ', 's')

    if strcmp(celsius, 's')
        break;
    endif

    celsius = str2double(celsius);

    #verifico se a conversão funcionou
    if isnan(celsius) #isnan = not a number (não é um número)
      disp('Por favor, insira um número válido')
      continue;
    endif

    #chamar a função e exibir o resultado
    fprintf('A temperatura em graus Farenheit é: %.2f ºF \n',conversao(celsius));
endwhile

