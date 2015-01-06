//       1         2         3         4         5         6         7
//34567890123456789012345678901234567890123456789012345678901234567890
//====================================================================
//
// Function Name: runge_kutta
//
// The Runge-Kutta 2nd order method is a numerical technique used to
// solve an ordinary differential equation.
//
// Input parameters
//     y1  = y initial value
//     h   = step size
//     n   = number of iterations
//     IVP = the differential equation
//
// Output parameters
//     ---
//
// Returns
//     x = The value of x from the calculations.
//     y = The value of y from the calculations.
//
//--------------------------------------------------------------------
//       Author: Nik Mohamad Aizuddin bin Nik Azmi
// Date Created: 06-JAN-2015
//--------------------------------------------------------------------
//                  MIT Licensed. See LICENSE file
//
//====================================================================

function[x, y] = runge_kutta(y1, h, n, IVP)

    y=zeros(n, 1);
    x=zeros(n, 1);
    y(1)=y1;

    for i=1:1:n
        k1 = IVP( x(i), y(i) );
        k2 = IVP( x(i)+h, y(i)+(k1*h) );
        y(i+1) = y(i) + (k1/2.0 + k2/2.0) * h;
        x(i+1) = x(i) + h;
    end

endfunction