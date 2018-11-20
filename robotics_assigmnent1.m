%	Applying the seven given rotations - translations.
	
	% Accuracy we want on accepting validity for the 
	% results of matrix multiplications
	accuracy = 0.0000001;

	disp('----------------- MOUZAKITIS NIKOLAOS TP4460------------------')	
	disp('---------------------- Assignment 1---------------------------')	
	disp('-----------------------            ---------------------------')	
	disp('--------------------------LAB1--------------------------------')

	disp('Final Transformation Matrix after the 7 translation/rotations.')	
	out = roty(12.5) * rotz(45) * tranx(1.5) * rotx(30) * eye(4,4) * tranz(2.09) * trany(0.73) * rotx(60)


	%	Creating the inverse of the process happened before.
	%	I found the stuff for this in Lecture number 5 of Robotics in eclass.
	
	disp('-----------------------            ---------------------------')	
	disp('--------------------------------------------------------------')	
	disp('Matrix generated by applying stuff from theory')	
	disp('on how to calculate the inverse matrix')	
	n = [out(1,1); out(2,1); out(3,1)];
	s = [out(1,2); out(2,2); out(3,2)];
	a = [out(1,3); out(2,3); out(3,3)];
	p = [out(1,4); out(2,4); out(3,4)];
	tmp = [ n s a];
	tmp = tmp';
	mk1 = -(n' * p);
	mk2 = -(s'*p);
	mk3 = -(a'*p);
	mkf = [ mk1; mk2; mk3];
	gen_inv = [ tmp mkf];
	gen_inv(4,:) = 0;
	gen_inv(4,4) = 1;

	gen_inv
	%	Validating the result by calling built-in function of Octave, inv for inverse of a matrix.
	disp('-----------------------            ---------------------------')	
	disp('--------------------------------------------------------------')	
	disp('Octave inverse function gives: ')
	B = inv(output1)


	disp('validating that they are inverses both of the arrays we found.')
	
	i4 =  eye(4,4);
	check1 = out*gen_inv;
	val = 0;

	for i=1:4
		for j = 1:4
			to_test = abs ( i4(i,j) -  check1(i,j) );
			if (  to_test > accuracy ) % if this happens then we assume the values are not identical.
				val = val+1;
			endif
		end
	end
	
	disp('First check');
	if(val == 0)
		disp('-------validated')
	else
		disp('not validated')
	endif


	check2 = gen_inv*out;
	val = 0;
	for i=1:4
		for j = 1:4
			to_test = abs ( i4(i,j) -  check2(i,j) );
			if (  to_test > accuracy ) % if this happens then we assume the values are not identical.
				val = val+1;
			endif
		end
	end
	
	disp('Second check');
	if(val == 0)
		disp('-------validated')
	else
		disp('not validated')
	endif


	
	
	check3 = B*out;
	val = 0;
	for i=1:4
		for j = 1:4
			to_test = abs ( i4(i,j) -  check3(i,j) );
			if (  to_test > accuracy ) % if this happens then we assume the values are not identical.
				val = val+1;
			endif
		end
	end
	
	disp('Third check');
	if(val == 0)
		disp('-------validated')
	else
		disp('not validated')
	endif

	check4 = out*B;
	val = 0;

	for i=1:4
		for j = 1:4
			to_test = abs ( i4(i,j) -  check4(i,j) );
			if (  to_test > accuracy ) % if this happens then we assume the values are not identical.
				val = val+1;
			endif
		end
	end
	
	disp('Fourth check');
	if(val == 0)
		disp('-------validated')
	else
		disp('not validated')
	endif





