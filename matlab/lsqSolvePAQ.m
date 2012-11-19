function [P A Q] = lsqSolvePAQ(E, A, max_iters) 
s = size(A, 1); t = size(A, 2);
%P = mean(E,2) * ones(1, s);
%Q = mean(E,1)' * ones(1, t);
P = rand(size(E, 1), s); Q = rand(size(E, 2), t);
for i = 1 : max_iters
%    fprintf('iter %d\n', i);
    Q = lsqQ(E, A, P);
    A = lsqA(E, P, Q);
    P = lsqP(E, A, Q);
end;

function A = lsqA(E, P, Q)
A=zeros(size(P,2),size(Q,2));
AQ=pinv(P)*E;
for i=1:size(A, 1),
    A(i,:)=lsqnonneg(Q,AQ(i,:)')';
end;
A=A./sum(A(:));

function P = lsqP(E, A, Q)
AQ = A * Q';
P = zeros(size(E, 1), size(A, 1));
for i=1:size(P,1),
    P(i, :) = lsqnonneg(AQ', E(i, :)')';
end;

function Q = lsqQ(E, A, P)
AP = P * A;
Q = zeros(size(E, 2), size(A, 2));
for i=1:size(Q,1),
    Q(i, :) = lsqnonneg(AP, E(:, i));
end;