inverse_eff=[2.165 5.618; 0.950 2.382; 2.529 8.969; 1.217 3.022; 0.889 2.447 ];
labels={'Infosys', 'HCL Tech', 'Wipro', 'TCS', 'MindTree'}
for i = 1:5
    plot(inverse_eff(i,1), inverse_eff(i,2), "b -- o")
    if i==5
        text(inverse_eff(i,1), inverse_eff(i,2),labels(i),'VerticalAlignment','bottom','HorizontalAlignment','right')
    else 
        text(inverse_eff(i,1), inverse_eff(i,2),labels(i),'VerticalAlignment','top','HorizontalAlignment','right')
    end
    hold on
end
xlabel('Operating Cost/Gross Profit');
ylabel('Employees/Gross Profit (in $hundered thousand');
title("Efficiency Frontier");
plot([inverse_eff(2,1) inverse_eff(5,1)], [inverse_eff(2,2) inverse_eff(5,2)])
plot([inverse_eff(2,1) 3], [inverse_eff(2,2) inverse_eff(2,2)])
plot([inverse_eff(5,1) inverse_eff(5,1)], [inverse_eff(2,2) 9])
plot([0 inverse_eff(3,1)], [0 inverse_eff(3,2)])
plot([inverse_eff(3,1) inverse_eff(3,1)], [inverse_eff(3,2) inverse_eff(2,2)])
plot([inverse_eff(3,1) inverse_eff(5,1)], [inverse_eff(3,2) inverse_eff(3,2)])