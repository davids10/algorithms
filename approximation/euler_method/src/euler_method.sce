function[] = euler_method(y1,h)
    y=1:1:10;
    y=zeros(y);
    y(1)=y1;
    x=1:1:10;
    x=zeros(x);
    i=1;
    dydx=0;

    for i=1:1:10
        dydx= -2.2067 * 10^-12 * (y(i)^4 - 81 * 10^8);
        y(i+1) = y(i) + dydx * h;
        x(i+1) = x(i) + h;
    end

    plot(x,y);
endfunction