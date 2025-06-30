function u = calcInterpCauchy(t, u_wave, z, d_z)
    u = zeros(length(t), 1);
    for n = 1 : 1 : length(t)
        temp = 0;
        for m = 1 : 1 : length(u_wave)
            temp = temp + u_wave(m, 1) * d_z(m, 1) / (z(m, 1) - t(n, 1));
        end
        u(n, 1) = real(temp / (2*pi*1j));
    end
end

