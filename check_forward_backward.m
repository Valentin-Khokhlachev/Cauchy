u_tab_restored = interpCauchy(t, u_tab, t, z, d_z);

f = figure;
f.Position(1:4) = [0 0 1920 1080];
hold on;
plot(t, log10(abs(u_tab - u_tab_restored)),...
    "Color", "black",...
    "Marker", ".",...
    "DisplayName", "difference");
legend();
saveas(gcf, strcat(path_to_graph, "check_forward_backward"), 'fig');
saveas(gcf, strcat(path_to_graph, "check_forward_backward"), 'png');


