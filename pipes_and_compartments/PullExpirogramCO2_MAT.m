function PullExpirogramCO2(sDataOut, vBreathNo)

  rBreath = sDataOut.aExpB(vBreathNo):sDataOut.aExpE(vBreathNo);
  
  aFCO2Exp = sDataOut.aGasFractionsMouthExp(rBreath);
  aFCO2Mod = sDataOut.aGasFractionsMouthMod(rBreath);
  
  aFlow = sDataOut.aFlow(rBreath);
  aVol = -0.01*cumsum(aFlow);
  aVolExp = (aVol-aVol(1));
  
  save('Flow_' +string(vBreathNo) +'.mat','aFlow')
  save('VolExp_' +string(vBreathNo) +'.mat', 'aVolExp')
  save('CO2_LGA_' +string(vBreathNo) +'.mat', 'aFCO2Exp')
  save('CO2_Mod_' +string(vBreathNo) +'.mat', 'aFCO2Mod')

end