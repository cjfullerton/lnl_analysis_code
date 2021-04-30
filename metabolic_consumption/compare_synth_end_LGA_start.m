vStartBreath = sDataOut.vBreathStartIn;
vCutBreath = vStartBreath + 50;

aConcArtCO2 = [sDataOut.sDataOutSynth.aConcArt(:,1,:);...
    sDataOut.aConcArt(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),1,:)];
aConcArtO2 = [sDataOut.sDataOutSynth.aConcArt(:,2,:);...
    sDataOut.aConcArt(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),2,:)];
aConcArtN2 = [sDataOut.sDataOutSynth.aConcArt(:,3,:);...
    sDataOut.aConcArt(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),3,:)];

aConcVenCO2 = [sDataOut.sDataOutSynth.aConcVenBB(:,1,:);...
    sDataOut.aConcVen(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),1,:)];
aConcVenO2 = [sDataOut.sDataOutSynth.aConcVenBB(:,2,:);...
    sDataOut.aConcVen(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),2,:)];
aConcVenN2 = [sDataOut.sDataOutSynth.aConcVenBB(:,3,:);...
    sDataOut.aConcVen(sDataOut.aInspB(vStartBreath):sDataOut.aExpE(vCutBreath),3,:)];

vSynthLength = size(sDataOut.sDataOutSynth.aConcArt,1);

aDividingLineX = [vSynthLength vSynthLength]
aDividingLineYArtCO2 = [min(aConcArtCO2), max(aConcArtCO2)];
aDividingLineYArtO2 = [min(aConcArtO2), max(aConcArtO2)];
aDividingLineYArtN2 = [min(aConcArtN2), max(aConcArtN2)];

aDividingLineX = [vSynthLength vSynthLength]
aDividingLineYVenCO2 = [min(aConcVenCO2), max(aConcVenCO2)];
aDividingLineYVenO2 = [min(aConcVenO2), max(aConcVenO2)];
aDividingLineYVenN2 = [min(aConcVenN2), max(aConcVenN2)];




figure;
hold on;
plot(aConcArtCO2)
plot(aDividingLineX, aDividingLineYArtCO2);


figure;
hold on;
plot(aConcArtO2)
plot(aDividingLineX, aDividingLineYArtO2);


figure;
hold on;
plot(aConcArtN2)
plot(aDividingLineX, aDividingLineYArtN2);

figure;
hold on;
plot(aConcVenCO2)
plot(aDividingLineX, aDividingLineYVenCO2);

figure;
hold on;
plot(aConcVenO2)
plot(aDividingLineX, aDividingLineYVenO2);


figure;
hold on;
plot(aConcVenN2)
plot(aDividingLineX, aDividingLineYVenN2);
