%	Translation of dz in z-axis.
function [retval] = tranz(dz)

	tm = eye(4,4);
	tm(3,4) = dz;

	retval = tm;
endfunction
