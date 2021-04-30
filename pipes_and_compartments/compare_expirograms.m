e_00_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_00/VolExp_5.mat');
e_00_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_00/CO2_Mod_5.mat');

e_01_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_01/VolExp_5.mat');
e_01_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_01/CO2_Mod_5.mat');

e_02_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_02/VolExp_5.mat');
e_02_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_02/CO2_Mod_5.mat');

e_03_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_03/VolExp_5.mat');
e_03_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_03/CO2_Mod_5.mat');

e_04_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_04/VolExp_5.mat');
e_04_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_04/CO2_Mod_5.mat');

e_05_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_05/VolExp_5.mat');
e_05_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_05/CO2_Mod_5.mat');

e_06_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_06/VolExp_5.mat');
e_06_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_06/CO2_Mod_5.mat');

e_07_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_07/VolExp_5.mat');
e_07_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_07/CO2_Mod_5.mat');

e_08_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_08/VolExp_5.mat');
e_08_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_08/CO2_Mod_5.mat');

e_09_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_09/VolExp_5.mat');
e_09_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_09/CO2_Mod_5.mat');

LGA_V = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_09/VolExp_5.mat');
LGA_CO2 = load('/Users/chrisf/Documents/Physiology/WIP/pipes_model/fits/extent_extracted_data/e_09/CO2_LGA_5.mat');

figure;
hold on;

plot(e_00_V.aVolExp, e_00_CO2.aFCO2Mod);
plot(e_01_V.aVolExp, e_01_CO2.aFCO2Mod);
plot(e_02_V.aVolExp, e_02_CO2.aFCO2Mod);
plot(e_03_V.aVolExp, e_03_CO2.aFCO2Mod);
plot(e_04_V.aVolExp, e_04_CO2.aFCO2Mod);
plot(e_05_V.aVolExp, e_05_CO2.aFCO2Mod);
plot(e_06_V.aVolExp, e_06_CO2.aFCO2Mod);
plot(e_07_V.aVolExp, e_07_CO2.aFCO2Mod);
plot(e_08_V.aVolExp, e_08_CO2.aFCO2Mod);
plot(e_09_V.aVolExp, e_09_CO2.aFCO2Mod);

figure;
hold on;

plot(e_00_V.aVolExp, e_00_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_01_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_02_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_03_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_04_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_05_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_06_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_07_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_08_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);
plot(e_00_V.aVolExp, e_09_CO2.aFCO2Mod - LGA_CO2.aFCO2Exp);






