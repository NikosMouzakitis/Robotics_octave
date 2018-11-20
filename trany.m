%	Translation of dy in y-axis.

function [retval] = trany(dy)

	tm = eye(4,4);
	tm(2,4) = dy;

	retval = tm;

endfunction
