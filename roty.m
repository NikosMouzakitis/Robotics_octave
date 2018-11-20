%	Rotation in Y-axis by theta degrees.

function [retval] = roty(theta)

	t = theta * (pi/180) ;
	
	retval = [ cos(t) 0	sin(t)	0;
		   0      1	0	0;
		  -sin(t) 0	cos(t)	0;
		   0	0	0	1 ];	  
endfunction
