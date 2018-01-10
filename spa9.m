R = ;                   % Code Rate
H = dvbs2ldpc(R); 
k = size(H,2) - size(H,1);

enc = comm.LDPCEncoder(H);
dec = comm.LDPCDecoder('ParityCheckMatrix', H, ...
                       'DecisionMethod', 'Hard decision', ...
                       'IterationTerminationCondition', 'Parity check satisfied');

mod = comm.QPSKModulator('BitInput', true);    
S = constellation(mod);                     
deMod = comm.QPSKDemodulator('BitOutput', true, ...
                             'DecisionMethod', 'Log-likelihood ratio', ...
                             'VarianceSource', 'Input port');	
EbNo = ;
EsNo = EbNo + 10*log10(2*R);
variance = 10^(-EsNo/10);         % noise mean power in Watts
variancedBW = 10*log10(variance); % noise mean power in dBW


a = ones(size(H,2)/2, 1); % for the AWGN channel

bitErrors = 0;
frameErrors = 0;
trials = 0;
while bitErrors < 10^3

    u = randi([0 1], k, 1);
    x = step(enc, u);
    s = step(mod, x);

    y = a.*s + wgn(length(s), 1, variancedBW, 'complex'); % add WGN   
    LRR = qpskDemap(y, a, variance, S);
%    LLR = step(deMod, y, variance);
	
    v = step(dec, Lx);
    
    newErrors = nnz(u ~= v);
    if newErrors > 0
       bitErrors = bitErrors + newErrors;
       frameErrors = frameErrors + 1;
    end
    trials = trials + 1;
end
BER = bitErrors/k/trials;
FER = frameErrors/trials;

