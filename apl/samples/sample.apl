integer main()
{
	integer p3,p2,p1,p4,temp; 
	p3 = Fork();//p3
	if(p3 == -2) then
		p4 = Fork(); //p4
		if(p4 == -2) then
			p3 = Getppid();
			temp = Wait(p3);
			temp = 3000;
			while(temp < 3050) do
				print(temp);
				temp = temp + 1;
			endwhile;
		else
			temp = 2000;
			while(temp < 2100) do
				print(temp);
				temp = temp + 1;
			endwhile;
		endif;
	else
		temp = 0;
		while(temp < 5)do
			temp = temp + 1;
		endwhile;
		p2 = Fork();//p2
		if(p2 == -2) then
			temp = 4000;
			while(temp < 4050)	do
				print(temp);
				temp = temp + 1;
			endwhile;
		else
			p1 = Fork();//p1
			if(p1 == -2) then
				temp = 5000;
				while(temp < 5010) do
					print(temp);
					temp = temp + 1;
				endwhile;
				temp = Delete("1");
		//		temp = Delete("2");
		//		temp = Delete("3");
		//		temp = Delete("4");
			endif;
		endif;
	endif;
	return(0);

}
