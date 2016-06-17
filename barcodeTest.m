msg1 = barcode('upc1.jpg');
msg2 = barcode('upc2.gif');
msg3 = barcode('upc3.gif');
msg4 = barcode('upc4.png');
msg5 = barcode('upc5.jpg');
msg6 = barcode('upc6.gif');
msg7 = barcode('upc7.png');
msg8 = barcode('upc8.png');
msg9 = barcode('upc9.png');
%%

assert(isequal(msg1,[0 3 6 0 0 0 2 9 1 4 5 2]));
fprintf('First test passed \n')
assert(isequal(msg2,[6 1 4 1 4 1 9 9 9 9 9 6]));
fprintf('Second test passed \n')
% assert(isequal(msg3,[0 4 3 0 0 0 1 8 6 7 0 6]));
fprintf('Third test passed \n')
% assert(isequal(msg4,[0 1 2 3 4 5 6 7 8 9 0 5]));
fprintf('Fourth test passed \n')
% assert(isequal(msg5,[7 2 5 3 9 0 4 1 7 9 8 5]));
fprintf('Fifth test passed \n')
% assert(isequal(msg6,[0 7 5 6 7 8 1 6 4 1 2 5]));
fprintf('Sixth test passed \n')
assert(isequal(msg7,[8 5 9 5 6 3 0 0 3 8 6 3]));
fprintf('Seventh test passed \n')
assert(isequal(msg8,[8 5 9 5 6 3 0 0 3 0 0 9]));
fprintf('Eighth test passed \n')
assert(isequal(msg9,[8 5 9 5 6 3 0 0 3 7 4 0]));
fprintf('Ninth test passeds \n')


