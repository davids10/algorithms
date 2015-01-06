function[] = test()

    random_numbers = lehmer(1, 7, 13);

    vector_size = size(random_numbers);
    for i=1:1:vector_size(1)
        printf('random_numbers(%d) = %d\n',i, random_numbers(i));
    end

endfunction