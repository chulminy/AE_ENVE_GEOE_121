
%% option 1
% search columns
for ii=1:puzzle_size
    col_vec = puzzle(:,ii);
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        test_word = col_vec(test_loc);
        
        is_word = true;
        for kk=1:n_word
            if word_db(kk) ~= test_word(kk)
                is_word = false;
            end
        end
        
        if is_word
            word_loc(:,2) = ii;
            word_loc(:,1) = test_loc;
        end

    end
end

% search rows
for ii=1:puzzle_size
    row_vec = puzzle(ii,:);
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        test_word = row_vec(test_loc);
        
        is_word = true;
        for kk=1:n_word
            if word_db(kk) ~= test_word(kk)
                is_word = false;
            end
        end
        
        if is_word
            word_loc(:,2) = test_loc;
            word_loc(:,1) = ii;
        end

    end
end

%% Sample

% Code 1
loc = 0;
for ii=1:5
    for jj=1:5
        if m(ii,jj) == 10
            loc = 10;
            break;
        end
    end
end

% Code 2
loc = 0;
isrun = false;
for ii=1:5
    for jj=1:5
        if m(ii,jj) == 10
            loc = 10;
            isrun = true;
            break;
        end
    end
    if isrun
       break; 
    end
end


%% option 2

% search columns
x
for ii=1:puzzle_size
    col_vec = puzzle(:,ii);
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        test_word = col_vec(test_loc);

        is_word = true;
        for kk=1:n_word
            if word_db(kk) ~= test_word(kk)
                is_word = false;
                break;
            end
        end

        if is_word
            word_loc(:,2) = ii;
            word_loc(:,1) = test_loc;

            is_run = true;
            break;
        end
    end

    if is_run
        break;
    end
end

is_run = false;
% search rows
for ii=1:puzzle_size
    row_vec = puzzle(ii,:);
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        test_word = row_vec(test_loc);

        is_word = true;
        for kk=1:n_word
            if word_db(kk) ~= test_word(kk)
                is_word = false;
            end
        end

        if is_word
            word_loc(:,2) = test_loc;
            word_loc(:,1) = ii;

            is_run = true;
        end

    end

    if is_run
        break;
    end
end
%% option 3

% search columns
is_run = false;
for ii=1:puzzle_size
    col_vec = puzzle(:,ii);
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        test_word = col_vec(test_loc);

        is_word = true;
        for kk=1:n_word
            if word_db(kk) ~= test_word(kk)
                is_word = false;
            end
        end

        if is_word
            word_loc(:,2) = ii;
            word_loc(:,1) = test_loc;

            is_run = true;
            break;
        end
    end

    if is_run
        break;
    end
end

if ~is_run
    % search rows
    for ii=1:puzzle_size
        row_vec = puzzle(ii,:);
        for jj=1:(puzzle_size-n_word+1)
            test_loc = jj:(jj+n_word-1);
            test_word = row_vec(test_loc);

            is_word = true;
            for kk=1:n_word
                if word_db(kk) ~= test_word(kk)
                    is_word = false;
                end
            end

            if is_word
                word_loc(:,2) = test_loc;
                word_loc(:,1) = ii;

                is_run = true;
            end

        end

        if is_run
            break;
        end
    end
end
