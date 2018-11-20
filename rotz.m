%	Rotation in Z-axis by theta degrees.

function [retval] = rotz(theta)

	t = theta * (pi/180) ;

	retval = [ cos(t) -sin(t)	0	0;
		   sin(t)  cos(t)      	0	0;
		   0	   0		1       0;
		   0	   0		0	1 ];	  
endfunction
