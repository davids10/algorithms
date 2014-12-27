function[] = main()
    function[ivp] = IVP(x, y)
        ivp = -2.2067 * 10^-12 * (y(i)^4 - 81 * 10^8);
    endfunction

    euler_method( 1200, 120, IVP );
endfunction