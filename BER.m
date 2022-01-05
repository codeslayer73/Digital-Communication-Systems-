clc
clear all
close all

EbNodB = 0:10;
EbNo = 10.^(EbNodB/10);

pe_bpsk = 0.5*erfc(sqrt(EbNo));
pe_bfsk = 0.5*erfc(sqrt(EbNo/2));
pe_bask = 0.5*erfc(sqrt(EbNo/4));

pe_bpsk_nc = 0.5*exp(-EbNo);
pe_bfsk_nc = 0.5*exp(-EbNo/2);
pe_bask_nc = 0.5*exp(-EbNo/4);

figure(1);
semilogy(EbNodB,pe_bpsk,'r*-');
hold on;
semilogy(EbNodB,pe_bfsk,'k+-');
hold on;
semilogy(EbNodB,pe_bask,'m>-');
hold on;
semilogy(EbNodB,pe_bpsk_nc,'b>-');
hold on;
semilogy(EbNodB,pe_bfsk_nc,'r>-');
hold on;
semilogy(EbNodB,pe_bask_nc,'m*-');
hold on;

legend('BPSK-C','BFSK-C','BASK-C','BPSK-NC','BFSK-NC','BPSK-NC');
title('BER Comparision of Coherent and Non Coherent digital modulation techniques');
xlabel('EbNodB (dB)');
ylabel('BER');
grid on;