%{a = 0:pi/20:3*pi;
#b = sin(a);plot(a,b)%}

z = (-10:0.1:10);
x= sin(z);
y = cos(z);
plot(x,y)

title('Circunferência de XXXX');
grid "on"

xlabel('Aqui temos o eixo x')
ylabel('Aqui temos o eixo y')

title('Gráfico 3D');
plot3(x,y,z ,'m')



