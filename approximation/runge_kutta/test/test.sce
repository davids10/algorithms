function[] = test()

    // STEP 1: Write your own IVP equation.
    function[ivp] = IVP(x, y)
        ivp = -2.2067 * 10^-12 * (y^4.0 - 81 * 10^8.0);
    endfunction

    // STEP 2: Perform runge-kutta
    [x1,y1] = runge_kutta( 1200, 480,  2, IVP );
    [x2,y2] = runge_kutta( 1200, 240,  4, IVP );
    [x3,y3] = runge_kutta( 1200, 120,  8, IVP );
    [x4,y4] = runge_kutta( 1200,  60, 16, IVP );
    [x5,y5] = runge_kutta( 1200,  30, 32, IVP );

    // STEP 3: Plot 2D graph, to see the results.
    clf();
    plot(x1,y1,'r-*',...
         x2,y2,'m-*',...
         x3,y3,'b-*',...
         x4,y4,'g-*',...
         x5,y5,'k-*');
    legend(['step_size=480';...
            'step_size=240';...
            'step_size=120';...
            'step_size=60';...
            'step_size=30'],...
            'in_lower_left');
    title('Runge-Kutta with different step size');
    axes = gca();
    axes.x_location = "origin";
    axes.y_location = "origin";

endfunction