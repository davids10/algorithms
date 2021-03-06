//       1         2         3         4         5         6         7
//34567890123456789012345678901234567890123456789012345678901234567890
//====================================================================
//
// Function Name: euler_method
//
//     Euler's method is a numerical technique to solve ordinary
//     differential equations. Use this algorithm to approximate
//     the value of y when x = some value.
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
// Date Created: 27-DEC-2014
//--------------------------------------------------------------------
//                  MIT Licensed. See LICENSE file
//
//====================================================================

function[x, y] = euler_method(y1, h, n, IVP)

    y=zeros(n, 1);
    x=zeros(n, 1);
    y(1)=y1;

    for i=1:1:n
        y(i+1) = y(i) + IVP( x(i), y(i) ) * h;
        x(i+1) = x(i) + h;
    end

endfunction