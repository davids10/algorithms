//          1         2         3         4         5         6         7
//01234567890123456789012345678901234567890123456789012345678901234567890
//=======================================================================
//-----------------------------------------------------------------------
// Function Name: euler_method
//
//     Euler's method is a numerical technique to solve ordinary
//     differential equations. Use this algorithm to approximate
//     the value of y when x = some value.
//
// Input parameters
//     y1  = y initial value
//     h   = step size
//     IVP = the differential equation
//
// Output parameters
//     ---
//
// Returns
//     ---
//
//-----------------------------------------------------------------------
//       Author: Nik Mohamad Aizuddin bin Nik Azmi
// Date Created: 27-DEC-2014
//-----------------------------------------------------------------------
//                  MIT Licensed. See LICENSE file
//-----------------------------------------------------------------------
//=======================================================================

function[] = euler_method(y1, h, IVP)
    y=1:1:10;
    y=zeros(y);
    y(1)=y1;
    x=1:1:10;
    x=zeros(x);
    i=1;
    dydx=0;


    for i=1:1:10
        y(i+1) = y(i) + IVP() * h;
        x(i+1) = x(i) + h;
    end

    plot(x,y);
endfunction