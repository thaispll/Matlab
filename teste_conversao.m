function d = calcularDistancia(v, a)
    % Converte a velocidade de km/h para m/s
    v_mps = v / 3.6;
    % Calcula a distância usando a fórmula d = v² / (2 * a)
    d = (v_mps^2) / (2 * a);
endfunction

while true
    % Solicita ao usuário que insira a velocidade inicial em km/h
    v = input('Digite a velocidade inicial do carro (em km/h) (ou "s" para sair): ', 's');

    if strcmp(v, 's')
        disp('Saindo do programa.');
        break;  % Sai do loop se o usuário digitar 's'
    endif

    % Solicita ao usuário que insira a taxa de desaceleração em m/s²
    a = input('Digite a taxa de desaceleração (em m/s²): ');

    % Converte a entrada da velocidade para número
    v = str2double(v);

    % Verifica se a conversão da velocidade foi bem-sucedida
    if isnan(v) || isnan(a) || a <= 0  % Verifica se a taxa de desaceleração é válida
        disp('Por favor, insira valores válidos.');
        continue;  % Volta ao início do loop
    endif

    % Chama a função para calcular a distância e exibe o resultado
    distancia = calcularDistancia(v, a);
    fprintf('A distância percorrida até parar completamente é: %.2f metros\n', distancia);
endwhile
