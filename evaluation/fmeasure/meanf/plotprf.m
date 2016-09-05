clear all;
clc;
mean=importdata('./results_mean.txt');
bar(mean,'group');
title('Evaluation');
legend_handle=legend('Precision','Recall','F-measure');
set(gca,'XGrid','on','XTickLabel',{'Otsu','Watershed'});
ylim([0 1]);

