File_10 = load('/Users/chrisf/Desktop/Model_Testing/190521101242/fits/lnl_recovery_old_DS_restrict_R_trend_zero/7150/190521101242_7150__model_lung_data.mat');

close all

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel("cardiac output / (l/min)");
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aPerfVar*60, 'DisplayName', 'f = 0.10');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel('Venous C_{O_2} / l(gas, STPD)/l');
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aConcVen(:,2), 'DisplayName', 'f = 0.10');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
xlabel("time / min");
ylabel('Arterial C_{O_2} / l(gas, STPD)/l');
plot(File_10.sDataOut.aTime/60, File_10.sDataOut.aConcArt(:,2), 'DisplayName', 'f = 0.10');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,2)-File_10.sDataOut.aConcVen(:,2)).*File_10.sDataOut.aPerfVar, 'DisplayName', 'f = 0.10');
plot(File_10.sDataOut.aTime/60,File_10.sDataOut.aGasExchange(:,2),'DisplayName', 'f = 0.10')
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,1)-File_10.sDataOut.aConcVen(:,1)).*File_10.sDataOut.aPerfVar, 'DisplayName', 'f = 0.10');
plot(File_10.sDataOut.aTime/60,File_10.sDataOut.aGasExchange(:,1),'DisplayName', 'f = 0.10')
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,2)-File_10.sDataOut.aConcVen(:,2)).*File_10.sDataOut.aPerfVar-File_10.sDataOut.aGasExchange(:,2), 'DisplayName', 'f = 0.10');
legend('Location',' Best');

figure('Units','inches','Position',[4.5,5.0,8.0 3.0],'PaperPositionMode','auto');
hold on;
plot(File_10.sDataOut.aTime/60, (File_10.sDataOut.aConcArt(:,1)-File_10.sDataOut.aConcVen(:,1)).*File_10.sDataOut.aPerfVar-File_10.sDataOut.aGasExchange(:,1), 'DisplayName', 'f = 0.10');
legend('Location',' Best');
