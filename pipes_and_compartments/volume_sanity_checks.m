dV = 0.5;

vMinVol_j= min(aVolDDS);

vMinVol_i = min(aFVolPDS.*vVolPDS + aFracToTubes*dV);

vVolC_i = (aFVolPDS.*vVolPDS + aFracToTubes*dV)./aFComp;
vVolC_j = aVolDDS./aFFlowDDS;

vMinExpToClearDDS = min(vVolC_j);
vMinExpToClearPDS = min(vVolC_i);

vVolExpToSeeCompGas_1 = vMinExpToClearDDS + vMinExpToClearPDS;

aVol_j = aVolDDS;
aVol_i = aFVolPDS.*vVolPDS + aFracToTubes*dV;

aFF_i = aFComp;
aFF_j = aFFlowDDS;

vNoPipes_k = vNoDDSPipes*vNoPDSPipes;

for i = 1:vNoPDSPipes
    for j = 1:vNoDDSPipes
        
        k = i + vNoPDSPipes*(j-1);
        
        aFF_k(k) = aFF_i(i)*aFF_j(j);
        aVol_k(k) = aVol_i(i)*aFF_j(j) + aVol_j(j)*aFF_i(i);
        
    end
end

aClearanceVol_k = aVol_k./aFF_k;

vVolExpToSeeCompGas_2 = min(aClearanceVol_k);