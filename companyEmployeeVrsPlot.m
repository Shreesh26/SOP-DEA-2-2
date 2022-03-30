outputVsInput=[2.6 4.616; 1.978 8.303; 2.317 2.583; 4.886 16.169; 0.238 0.973];%emplyees as input
labels={'Infosys', 'HCL Tech', 'Wipro', 'TCS', 'MindTree'}
for i = 1:5
    plot(outputVsInput(i,1), outputVsInput(i,2), "b -- o")
    if i==5
        text(outputVsInput(i,1), outputVsInput(i,2),labels(i),'VerticalAlignment','bottom','HorizontalAlignment','right')
    else 
        text(outputVsInput(i,1), outputVsInput(i,2),labels(i),'VerticalAlignment','top','HorizontalAlignment','right')
    end
    hold on
end
xlabel('No. of Employees ( in hundred thounds)');
ylabel('Gross Profit (in $ billion)');
title("CRS and VRS frontiers for the companies");
%line([0 0], [outputVsInput(2,1) outputVsInput(2,2)], )
plot([0 outputVsInput(2,1) 3*outputVsInput(2,1)], [0 outputVsInput(2,2) 3*outputVsInput(2,2)])
plot([outputVsInput(4,1) outputVsInput(2,1)], [outputVsInput(4,2) outputVsInput(2,2)])