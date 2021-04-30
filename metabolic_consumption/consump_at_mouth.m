function consump_at_mouth()

File_00 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R_FRCO_0_0/7161/190521101242_7161__model_lung_data.mat');

vStartBreath = File_00.sDataOut.vBreathStartIn;
vEndBreath = File_00.sDataOut.vBreathEndIn;

aGasExpIn = NaN(vEndBreath,3);
aGasExpOut = NaN(vEndBreath,3);
aGasModIn = NaN(vEndBreath,3);
aGasModOut = NaN(vEndBreath,3);

aVolModLungDelta = NaN(vEndBreath,1);

aBreathLength = NaN(vEndBreath,1);

aMidBreathTime = NaN(vEndBreath,1);


for i = vStartBreath:vEndBreath
    
    vInspB_i = File_00.sDataOut.aInspB(i);
    vInspE_i = File_00.sDataOut.aInspE(i);
    vExpB_i =  File_00.sDataOut.aExpB(i);
    vExpE_i = File_00.sDataOut.aExpE(i);
    
    aGasExpIn(i,:) = sum(File_00.sDataOut.aFlow(vInspB_i:vInspE_i).*File_00.sDataOut.aGasFractionsMouthExp(vInspB_i:vInspE_i,:),1);
    aGasExpOut(i,:) = sum(File_00.sDataOut.aFlow(vExpB_i:vExpE_i).*File_00.sDataOut.aGasFractionsMouthExp(vExpB_i:vExpE_i,:),1);
    
    aGasModIn(i,:) = sum(File_00.sDataOut.aFlow(vInspB_i:vInspE_i).*File_00.sDataOut.aGasFractionsMouthMod(vInspB_i:vInspE_i,:),1);
    aGasModOut(i,:) = sum(File_00.sDataOut.aFlow(vExpB_i:vExpE_i).*File_00.sDataOut.aGasFractionsMouthMod(vExpB_i:vExpE_i,:),1);
    
    aVolModLungDelta(i) = File_00.sDataOut.aVolAlvTot(vExpE_i) - File_00.sDataOut.aVolAlvTot(vInspB_i);
    
    aBreathLength(i) = File_00.sDataOut.aTime(vExpE_i) - File_00.sDataOut.aTime(vInspB_i);
   
    aMidBreathTime(i) = (File_00.sDataOut.aTime(vInspB_i) + File_00.sDataOut.aTime(vExpE_i))/2;
end

end

