function res = interpCauchy(t, u_tab, t_interp, z, d_z)
    interp_coefs = calcInterpCauchyCoefs(t, u_tab, z, d_z);
    res = calcInterpCauchy(t_interp, interp_coefs, z, d_z);
end

