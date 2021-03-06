function init_state = get_init_state(number)

	dx = 1/number;
	phi = @(x) sin(pi*x) + 0.5*sin(2*pi*x) + 0.25*sin(4*pi*x);
	psi = @(x) pi*(cos(pi*x) + cos(2*pi*x) + cos(4*pi*x));
	
	number -= 2;
	init_state = zeros(1,number*2);
	
	for i = 1:number
		init_state(i) = 	   phi(i*dx);
		init_state(i+number) = psi(i*dx);
	endfor
	
endfunction