//       1         2         3         4         5         6         7
//34567890123456789012345678901234567890123456789012345678901234567890
//====================================================================
//
// Function Name: lehmer
//
// Generates random numbers using Lehmer algorithm.
//
// Input parameters
//     1) seed      = Initial seed
//     2) mult      = Multiplier
//     3) mod_value = Modulus value
//
// Output parameters
//     ---
//
// Returns
//     x = Generated random numbers.
//
//--------------------------------------------------------------------
//       Author: Nik Mohamad Aizuddin bin Nik Azmi
// Date Created: 07-JAN-2015
//--------------------------------------------------------------------
//                  MIT Licensed. See LICENSE file
//
//====================================================================

function[x] = lehmer(seed, mult, mod_value)

    x = zeros(mod_value-1, 1); // store a sequence of random number
    i = 0;                     // general-purpose counter
    temp = 0;                  // temporary variable
    
    // WARNING! seed must not equal to 0 and not equal to m
    // Make sure the seed in this range: 0 < x(1) < m
    if seed == 0 then
        printf('FATAL: seed must not equal 0');
        return;
    end
    if seed == mod_value then
        printf('FATAL: seed must not equal mod_value');
        return;
    end

    // Initial random number = seed.
    x(1) = seed;

    // Generate a sequence of random numbers
    for i=1:1:mod_value-1
        x(i+1) = pmodulo( (mult^i) * x(1) ,mod_value);
    end
    
    // Check if a is full-period multiplier
    i = 1;
    temp = mult;
    while temp ~= 1
        i = i + 1;
        temp = pmodulo(mult*temp, mod_value);
    end

    if i == (mod_value - 1) then
        printf('The variable mult is a full-period multiplier\n');
    else
        printf('The variable mult is NOT a full-period multiplier\n');
    end

endfunction