File_00 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R_FRCO_0_0/7161/190521101242_7161__model_lung_data.mat');
File_05 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R_FRCO_0_05/7173/190521101242_7173__model_lung_data.mat');
File_10 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R/7149/190521101242_7149__model_lung_data.mat');
File_15 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R_FRCO_0_15/7177/190521101242_7177__model_lung_data.mat');

close all;

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel("cardiac output / (l/min)");
plot(File_00.sDataOut.aTime/60, File_00.sDataOut.aPerfVar*60, 'DisplayName', 'f = 0.00');
plot(File_05.sDataOut.aTime/60, File_05.sDataOut.aPerfVar*60, 'DisplayName', 'f = 0.05');
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aPerfVar*60, 'DisplayName', 'f = 0.10');
plot(File_15.sDataOut.aTime/60, File_15.sDataOut.aPerfVar*60, 'DisplayName', 'f = 0.15');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel('Venous C_{O_2} / l(gas, STPD)/l');
plot(File_00.sDataOut.aTime/60, File_00.sDataOut.aConcVen(:,2), 'DisplayName', 'f = 0.00');
plot(File_05.sDataOut.aTime/60, File_05.sDataOut.aConcVen(:,2), 'DisplayName', 'f = 0.05');
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aConcVen(:,2), 'DisplayName', 'f = 0.10');
plot(File_15.sDataOut.aTime/60, File_15.sDataOut.aConcVen(:,2), 'DisplayName', 'f = 0.15');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel('Arterial C_{O_2} / l(gas, STPD)/l');
plot(File_00.sDataOut.aTime/60, File_00.sDataOut.aConcArt(:,2), 'DisplayName', 'f = 0.00');
plot(File_05.sDataOut.aTime/60, File_05.sDataOut.aConcArt(:,2), 'DisplayName', 'f = 0.05');
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aConcArt(:,2), 'DisplayName', 'f = 0.10');
plot(File_15.sDataOut.aTime/60, File_15.sDataOut.aConcArt(:,2), 'DisplayName', 'f = 0.15');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_00.sDataOut.aTime/60, (File_00.sDataOut.aConcArt(:,2)-File_00.sDataOut.aConcVen(:,2)).*File_00.sDataOut.aPerfVar, 'DisplayName', 'f = 0.00');
plot(File_00.sDataOut.aTime/60,File_00.sDataOut.aGasExchange(:,2),'DisplayName', 'f = 0.00')
plot(File_05.sDataOut.aTime/60, (File_05.sDataOut.aConcArt(:,2)-File_05.sDataOut.aConcVen(:,2)).*File_05.sDataOut.aPerfVar, 'DisplayName', 'f = 0.05');
plot(File_05.sDataOut.aTime/60,File_05.sDataOut.aGasExchange(:,2),'DisplayName', 'f = 0.05')
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,2)-File_10.sDataOut.aConcVen(:,2)).*File_10.sDataOut.aPerfVar, 'DisplayName', 'f = 0.10');
plot(File_10.sDataOut.aTime/60,File_10.sDataOut.aGasExchange(:,2),'DisplayName', 'f = 0.10')
plot(File_15.sDataOut.aTime/60, (File_15.sDataOut.aConcArt(:,2)-File_15.sDataOut.aConcVen(:,2)).*File_15.sDataOut.aPerfVar, 'DisplayName', 'f = 0.15');
plot(File_15.sDataOut.aTime/60,File_15.sDataOut.aGasExchange(:,2),'DisplayName', 'f = 0.15')
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_00.sDataOut.aTime/60, (File_00.sDataOut.aConcArt(:,1)-File_00.sDataOut.aConcVen(:,1)).*File_00.sDataOut.aPerfVar, 'DisplayName', 'f = 0.00');
plot(File_00.sDataOut.aTime/60,File_00.sDataOut.aGasExchange(:,1),'DisplayName', 'f = 0.00')
plot(File_05.sDataOut.aTime/60, (File_05.sDataOut.aConcArt(:,1)-File_05.sDataOut.aConcVen(:,1)).*File_05.sDataOut.aPerfVar, 'DisplayName', 'f = 0.05');
plot(File_05.sDataOut.aTime/60,File_05.sDataOut.aGasExchange(:,1),'DisplayName', 'f = 0.05')
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,1)-File_10.sDataOut.aConcVen(:,1)).*File_10.sDataOut.aPerfVar, 'DisplayName', 'f = 0.10');
plot(File_10.sDataOut.aTime/60,File_10.sDataOut.aGasExchange(:,1),'DisplayName', 'f = 0.10')
plot(File_15.sDataOut.aTime/60, (File_15.sDataOut.aConcArt(:,1)-File_15.sDataOut.aConcVen(:,1)).*File_15.sDataOut.aPerfVar, 'DisplayName', 'f = 0.15');
plot(File_15.sDataOut.aTime/60,File_15.sDataOut.aGasExchange(:,1),'DisplayName', 'f = 0.15')
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_00.sDataOut.aTime/60, (File_00.sDataOut.aConcArt(:,2)-File_00.sDataOut.aConcVen(:,2)).*File_00.sDataOut.aPerfVar-File_00.sDataOut.aGasExchange(:,2), 'DisplayName', 'f = 0.00');
plot(File_05.sDataOut.aTime/60, (File_05.sDataOut.aConcArt(:,2)-File_05.sDataOut.aConcVen(:,2)).*File_05.sDataOut.aPerfVar-File_05.sDataOut.aGasExchange(:,2), 'DisplayName', 'f = 0.05');
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,2)-File_10.sDataOut.aConcVen(:,2)).*File_10.sDataOut.aPerfVar-File_10.sDataOut.aGasExchange(:,2), 'DisplayName', 'f = 0.10');
plot(File_15.sDataOut.aTime/60, (File_15.sDataOut.aConcArt(:,2)-File_15.sDataOut.aConcVen(:,2)).*File_15.sDataOut.aPerfVar-File_15.sDataOut.aGasExchange(:,2), 'DisplayName', 'f = 0.15');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_00.sDataOut.aTime/60, (File_00.sDataOut.aConcArt(:,1)-File_00.sDataOut.aConcVen(:,1)).*File_00.sDataOut.aPerfVar-File_00.sDataOut.aGasExchange(:,1), 'DisplayName', 'f = 0.00');
plot(File_05.sDataOut.aTime/60, (File_05.sDataOut.aConcArt(:,1)-File_05.sDataOut.aConcVen(:,1)).*File_05.sDataOut.aPerfVar-File_05.sDataOut.aGasExchange(:,1), 'DisplayName', 'f = 0.05');
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,1)-File_10.sDataOut.aConcVen(:,1)).*File_10.sDataOut.aPerfVar-File_10.sDataOut.aGasExchange(:,1), 'DisplayName', 'f = 0.10');
plot(File_15.sDataOut.aTime/60, (File_15.sDataOut.aConcArt(:,1)-File_15.sDataOut.aConcVen(:,1)).*File_15.sDataOut.aPerfVar-File_15.sDataOut.aGasExchange(:,1), 'DisplayName', 'f = 0.15');
legend('Location',' Best');


