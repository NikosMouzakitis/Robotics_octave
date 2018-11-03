
%	tran:: Translates a vector, [ox,oy,oz] with
%	       the given differences in every axis.


function [retval] = tran(vec,dx, dy, dz)




	retval = zeros(4,1);
	init = [ vec(1,1); vec(2,1); vec(3,1); 1];
	
	tm = eye(4,4);
	tm(1,4) = dx;
	tm(2,4) = dy;
	tm(3,4) = dz;

	retval = tm * init;
	retval = retval(1:3,:);
endfunction
