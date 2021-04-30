dV = 0.5

aVol_j = aVolDDS;
aVol_i = aFVolPDS.*vVolPDS + aFracToTubes*dV;

aFF_i = aFComp;
aFF_j = aFFlowDDS;

%Method One - sum all combos of clearance volumes

vVolC_i = aVol_i./aFF_i;
vVolC_j = aVol_j./aFF_j;

for i = 1:vNoPDSPipes
    for j = 1:vNoDDSPipes
        
        k = i + vNoPDSPipes*(j-1);
        
        vVolC_k_I(k) = vVolC_i(i) + vVolC_j(j);
        
    end
end

%Method Two - explicity construct k pipes


for i = 1:vNoPDSPipes
    for j = 1:vNoDDSPipes
        
        k = i + vNoPDSPipes*(j-1);
        
        aFF_k(k) = aFF_i(i)*aFF_j(j);
        aVol_k(k) = aVol_i(i)*aFF_j(j) + aVol_j(j)*aFF_i(i);
        
    end
end

vVolC_k_II = aVol_k./aFF_k;

figure
hold on
plot(vVolC_k_I, 'x')
plot(vVolC_k_II, 'o')

figure

