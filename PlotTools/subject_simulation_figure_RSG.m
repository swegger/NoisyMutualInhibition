close all;

load SWE_sim_results_021119_with_warmup.mat

figure('Position', [100, 200, 1000, 600]);
h1 = subplot('121');
errorbar(tss, mtp_in(:,1), stdtp_in(:,1),...
    'r', 'Marker', 'o', 'LineStyle', 'none',...
    'MarkerFaceColor', 'r', 'MarkerSize', 4,...
    'LineWidth', 1.5);
hold on;
errorbar(durations + 5, prod_time_lst * 10,...
    prod_var_lst * 10, 'b', 'Marker', 'o', 'LineStyle', 'none',...
    'MarkerFaceColor', 'b', 'MarkerSize', 4,...
    'LineWidth', 1.5)
plot(durations + 5, prod_time_lst * 10, 'b')
plot(durations, mtp_in(:,1), 'r')
xlim([500, 1100])
ylim([500, 1100])
xlabel('$t_s (ms)$')
ylabel('$t_p (ms)$')
plotUnity;
mymakeaxis(gca, 'xytitle', '1-2-Go', ...
    'xticks', [600, 800, 1000], 'yticks', [600 800 1000],...
    'interpreter', 'latex', 'font_size', 20)

axis square

h2 = subplot('122');
l1 = errorbar(tss, mtp_in(:,2), stdtp_in(:,2),...
    'r', 'Marker', 'o', 'LineStyle', 'none',...
    'MarkerFaceColor', 'r', 'MarkerSize', 4,...
    'LineWidth', 1.5);
hold on;
l2 = errorbar(durations + 5, prod_time_lst2 * 10,...
    prod_var_lst2 * 10, 'b', 'Marker', 'o', 'LineStyle', 'none',...
    'MarkerFaceColor', 'b', 'MarkerSize', 4,...
    'LineWidth', 1.5);

l3 = plot(durations + 5, prod_time_lst2 * 10, 'b');
l4 = plot(durations, mtp_in(:,2), 'r');


xlim([500, 1100])
ylim([500, 1100])
xlabel('$t_s (ms)$')
ylabel('$t_p (ms)$')
plotUnity;
mymakeaxis(gca, 'xytitle', '1-2-3-Go',...
    'xticks', [600, 800, 1000], 'yticks', [600 800 1000],...
    'interpreter', 'latex', 'font_size', 20)
legend1 = legend([l1, l2], {'Behavior', 'Model', ''});

set(legend1,...
    'Position',[0.83 0.42 0.05 0.05],...
    'EdgeColor',[0.94 0.94 0.94],...
    'Color',[0.941 0.941 0.94],...
    'FontSize', 18);
axis square

set(h1, 'Position', [0.05, 0.11, 0.43, 0.82]);
set(h2, 'Position', [0.5, 0.11, 0.43, 0.82]);

