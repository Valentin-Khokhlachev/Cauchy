z0 = (a + b) / 2;
R = (b - a) / 2 + Delta;
h_phi = 2 * pi / N;

z = zeros(N, 1);
d_z = zeros(N, 1);

for m = 1 : 1 : N 
    z(m, 1) = z0 + R * exp(1j * (phi0 + (m - 1) * h_phi));
    d_z(m, 1) = (1j * h_phi) * R * exp(1j * (phi0 + (m - 1) * h_phi));
end