mod = comm.QPSKModulator('BitInput', true);          
deMod = comm.QPSKDemodulator('BitOutput', true, ...
                             'DecisionMethod', 'Log-likelihood ratio', ...
                             'Variance', 1);