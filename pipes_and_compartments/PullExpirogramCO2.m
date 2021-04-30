function PullExpirogramCO2(sDataOut, vBreathNo)

  rBreath = sDataOut.aExpB(vBreathNo):sDataOut.aExpE(vBreathNo);
  
  aFCO2Exp = sDataOut.aGasFractionsMouthExp(rBreath);
  aFCO2Mod = sDataOut.aGasFractionsMouthMod(rBreath);
  
  aFlow = sDataOut.aFlow(rBreath);
  aVol = -0.01*cumsum(aFlow);
  aVolExp = (aVol-aVol(1));
  
  writematrix(aFlow, 'Flow_' +string(vBreathNo) +'.csv')
  writematrix(aVolExp, 'VolExp_' +string(vBreathNo) +'.csv')
  writematrix(aFCO2Exp', 'CO2_LGA_' +string(vBreathNo) +'.csv')
  writematrix(aFCO2Mod', 'CO2_Mod_' +string(vBreathNo) +'.csv')

end