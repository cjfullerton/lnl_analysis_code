function [outputArg1,outputArg2] = pipes_stats(aFComp)
%PIPES_STATS function to calculate statistics on ipes and compartments
%   Caclulates statistics on actually existing population of pipes and
%   compartments

 vMeanPop = mean(aFComp);
 vExp2Pop = mean(aFComp.^2);
 vExp3Pop = mean(aFComp.^3);
 vSDPop = sqrt(vExp2Pop - vMeanPop^2);
 vSkewPop = (vExp3Pop - 3*vMeanPop*vSDPop^2 - vMeanPop^3)/vSDPop^3;
            
outputArg1 = vSDPop;
outputArg2 = vSkewPop;

end

