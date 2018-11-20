% Translation of dx in x - axis.

function [retval] = tranx(dx)

	tm = eye(4,4);
	tm(1,4) = dx;

	retval = tm;

endfunction
