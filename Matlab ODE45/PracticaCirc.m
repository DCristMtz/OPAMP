[t,y] = ode45(@Circ,[0 0.003],[0 0]); %Dos condiciones iniciales dado el espacio estado

figure(1)
plot(t,y(:,1));
grid on
title("Sistema")
xlabel("Tiempo")
ylabel("Voltaje")
legend('Señal')