function I = ltr_mrs(ch, s)
morse = [000012  %%% A
        002111  %%% B
        002121  %%% C
        000211  %%% D
        000001  %%% E
        001121  %%% F
        000221  %%% G
        001111  %%% H
        000011  %%% I
        001222  %%% J
        000212  %%% K
        001211  %%% L
        000022  %%% M
        000021  %%% N
        000222  %%% O
        001221  %%% P
        002212  %%% Q
        000121  %%% R
        000111  %%% S
        000002  %%% T
        000112  %%% U
        001112  %%% V
        000122  %%% W
        002112  %%% Z
        002122  %%% Y
        002211  %%% Z
        002122  %%% 1
        012222  %%% 2
        011222  %%% 3
        011122  %%% 4
        011112  %%% 5
        021111  %%% 6
        022111  %%% 7
        022211  %%% 8
        022221  %%% 9
        022222  %%% 0
    ];

if s == 1       %%% Character to Morse Code
    if (double(ch) >=65) && (double(ch) <=90)
        index = double(ch) - 64;
    elseif (double(ch) >=49) && (double(ch) <=57)
        index = double(ch) - 22;
    elseif (double(ch) == 48)
        index = double(ch) - 12;
    else
        index=0;
    end
    if index
        I = morse(index);
    else 
        I=0;
    end
elseif s == 2       %%% Morse Code to Character
    index = find(morse==ch);
    if index == 36
        index = index + 12;
    elseif (index >= 27) && (index <= 35)
        index = index + 22;
    elseif (index >=1) && (index <= 26)
        index = index + 64;
    end
    I = char(index);
end



