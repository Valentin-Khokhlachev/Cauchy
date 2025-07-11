u_tab_new = interpCauchy(t, u_tab, t_new, z, d_z);

f = figure;
f.Position(1:4) = [0 0 1920 1080];
hold on;
plot(t, u_tab,...
    "Color", "black",...
    "Marker", "o",...
    "MarkerSize", 8,...
    "DisplayName", "orig");
plot(t_new, u_tab_new,...
    "Color", "red",...
    "Marker", ".",...
    "MarkerSize", 10,...
    "LineStyle", "--",...
    "DisplayName", "interpCauchy");
legend();
saveas(gcf, strcat(path_to_graph, "check_interpCauchy_graph"), 'fig');
saveas(gcf, strcat(path_to_graph, "check_interpCauchy_graph"), 'png');