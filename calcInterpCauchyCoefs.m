function u_wave = calcInterpCauchyCoefs(t, u, z, d_z)
    C = zeros(length(z), length(z));
    U = u .* (2*pi*1j);
    for n = 1 : 1 : length(t)
        for m = 1 : 1 : length(u)
            C(n, m) = d_z(m, 1) / (z(m, 1) - t(n, 1));
        end
    end
    u_wave = linsolve(C, U);
end

