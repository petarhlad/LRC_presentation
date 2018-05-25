V = [1 3 9 2 6 5 4 12 10 7 8 11]
P = randperm(12);

PV = V(P)

R1 = [1 3 9; 2 6 5; 4 12 10; 7 8 11];
R2 = [1 5 12 8; 2 10 11 3; 4 7 9 6];

RP1 = zeros(4,3);
RP2 = zeros(3,4);

for i=1:4
  for j=1:3
    RP1(i,j) = PV(find(V==R1(i,j)));
    RP2(j,i) = PV(find(V==R2(j,i)));
  endfor
endfor

RP1
max(RP1')
for i=max(RP1')
  V(find(PV==i))
endfor

RP2
max(RP2')
for i=max(RP2')
  V(find(PV==i))
endfor