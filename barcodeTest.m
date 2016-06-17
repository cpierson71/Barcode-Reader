msg1 = barcode('upc1.jpg');
msg2 = barcode('upc2.gif');
msg3 = barcode('upc3.gif');
msg4 = barcode('upc4.png');
msg5 = barcode('upc5.jpg');
msg6 = barcode('upc6.gif');
msg7 = barcode('upc7.png');
msg8 = barcode('upc8.png');
msg9 = barcode('upc9.png');


assert(ms1 == [0 3 6 0 0 0 2 9 1 4 5 2]);
assert(ms2 == [6 1 4 1 4 1 9 9 9 9 9 6]);
assert(ms3 == [0 4 3 0 0 0 1 8 6 7 0 6]);
assert(ms4 == [0 1 2 3 4 5 6 7 8 9 0 5]);
assert(ms5 == [7 2 5 3 9 0 4 1 7 9 8 5]);
assert(ms6 == [0 7 5 6 7 8 1 6 4 1 2 5]);
assert(ms7 == [8 5 9 5 6 3 0 0 3 8 6 3]);
assert(ms8 == [8 5 9 5 6 3 0 0 3 0 0 9]);
assert(ms9 == [8 5 9 5 6 3 0 0 3 7 4 0]);


