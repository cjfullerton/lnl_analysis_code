figure
hold on

for  i = 1:oTLLM.vNoComps
    plot([0; diff(sExitAlveoli.aCVolGas(:,1,i))]./[0; diff(sExitAlveoli.aCVol(:,i))])
end

aFComp = [oTLLM.oLung.aoComp.vFComp];
aFPerf = [oTLLM.oLung.aoComp.vFPerf];

figure
hold on

for  i = 1:oTLLM.vNoComps
    plot(sExitAlveoli.aCVol(:,i), [0; diff(sExitAlveoli.aCVolGas(:,1,i))]./[0; diff(sExitAlveoli.aCVol(:,i))])
end