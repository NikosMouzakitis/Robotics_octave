%	Rotation in X-axis by theta degrees.

function [retval] = rotx(theta)

	t = theta * (pi/180) ;
	
	retval = [ 1	0	0	0;
		   0    cos(t)	-sin(t) 0;
		   0	sin(t)	cos(t)	0;
		   0	0	0	1 ];	  
endfunction
