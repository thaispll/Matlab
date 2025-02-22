function kmh_ms()
    while true
        velocidade = input('Digite a velocidade em km/h: ');
        aceleracao = input('Digite a aceleração em m/s²: ');
        if  velocidade>0 || aceleracao>0

                velocidade_convertida = (velocidade/3.6);
                distancia = (velocidade_convertida^2) / (2 * aceleracao);
                fprintf('Velocidade: %.2f m/s\n', velocidade_convertida);
                fprintf('Aceleração: %.2f m/s²\n', aceleracao);
                fprintf('Distancia: %.2f m\n', distancia);
        else
                disp('Opção inválida. Por favor, escolha uma operação válida.');
        end

        continuar = input('Deseja continuar?(S/N)', 's');
        if lower(continuar) ~= 's'
          disp('Encerrando o programa.');
          break;
    end
end
