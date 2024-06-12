word = 'banana';
n_word = numel(word);
word_db = double(word);

puzzle_size = 10;
puzzle = CreateWordPuzzle(puzzle_size, word);
disp('==Puzzle==');
disp(char(puzzle));

% find a word location
word_loc = zeros(numel(word),2);

% search columns
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

% evaluate your answer
char_int = puzzle(word_loc(:,1) + (word_loc(:,2)-1)*puzzle_size);
fprintf('The word that you found is %s.\n',char(char_int'))

function puzzle = CreateWordPuzzle(puzzle_size, word)

puzzle = zeros(puzzle_size, puzzle_size);

% assign word set
n_word = numel(word);

idx = randi(puzzle_size);
if randi([0 1])
    % cokumn vector
    str_idx = randi(puzzle_size-n_word+1);
    puzzle(str_idx:(str_idx+n_word-1),idx) = word';
else
    % row vector
    str_idx = randi(puzzle_size-n_word+1);
    puzzle(idx, str_idx:(str_idx+n_word-1),:) = word;
end

char_a = 97;
char_z = 122;
char_array = char_a:char_z;
non_word_char = char_array(~ismember(char_array, unique(word)));

emty_puzzle = ~puzzle(:);
puzzle(emty_puzzle) = ...
    non_word_char(randi(numel(non_word_char), [sum(emty_puzzle), 1]))';
end
