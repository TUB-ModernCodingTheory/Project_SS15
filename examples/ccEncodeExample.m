path('../bin/',path);

forwardTrellis = zeros(2,2,2);

forwardTrellis(1,1,2) = 01; %s=0, u=0
forwardTrellis(1,1,1) = 1;

forwardTrellis(1,2,2) = 11; %s=0, u=1
forwardTrellis(1,2,1) = 1;

forwardTrellis(2,1,2) = 10; %s=1, u=0
forwardTrellis(2,1,1) = 0;

forwardTrellis(2,2,2) = 00; %s=1, u=1
forwardTrellis(2,2,1) = 0;

forward = struct('trellis', forwardTrellis,'ldStates',1,'ldOutputs',2,'ldInputs',1);

s0 = [1];

seq = [1,1,1,0];

[c, sN] = ccEncode(forward,seq,s0);