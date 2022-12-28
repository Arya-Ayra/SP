p = [3];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0.1];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0, 0.5];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [2, -0.5];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0.5, -0.5];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [2, 2, 2];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0, 1, 2];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [-0.5, 1i];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0, 1j, 1j *-1];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [0.5, -0.5, 2+1j, 2-1j];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

%******************

p = [1+1j, 1+2*1j, 1+3*1j, 2+1j];
[N, ROC, C, S] = roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);