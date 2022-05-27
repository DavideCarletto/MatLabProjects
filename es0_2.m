x = linspace(-5,5, 10); % è un vettore con punti equispaziati con il numero di punti che si vuole definire.

% oppure potrei fare 
% y = -5:1:5; in cui il secondo è lo step che passa tra un'unità e l'altra.

y = exp(-x.^2); %bisogna mettere il punto perchè x è un vettore, e bisogna calcolare per ogni componente


x1 = linspace(-5,5, 100);
y1 = exp(-x1.^2);

figure
plot(x,y, 'r*--');
hold on % dice di mantenersi sulla stessa finestra

plot(x1,y1,'bs--'); %bs vuol dire blue square
title('titolo');
legend('10 punti','100 punti');

hold off 