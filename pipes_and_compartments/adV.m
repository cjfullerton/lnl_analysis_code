function adV_out = adV(sDataOut, oModel)

rBreaths = sDataOut.vBreathStartIn:sDataOut.vBreathEndIn;

adVolAlv = sDataOut.aVolAlvTot(sDataOut.aInspE(sDataOut.vBreathStartIn:sDataOut.vBreathEndIn)) - oModel.oLung.vVolAlv;

adVolTot = adVolAlv./(1-oModel.oLung.vLAComp);

figure
hold on

plot(rBreaths, adVolAlv,'x');

plot(rBreaths, adVolTot,'o');

adV_out = [rBreaths' adVolTot];

writematrix(adV_out, 'deltaVol.csv')

end