integer main()
{
	integer pid,b,temp;
	string a;
	print("0 to halt");
	print("prog name");
	read(a);
	while(a != "0") do
		pid = Fork();
		if(pid == -1) then
			print("error");
		endif;
		breakpoint;
		if(pid != -2) then
			b = Wait(pid);
		endif;
		breakpoint;
		if(pid == -2) then
			print("prog executing");
			breakpoint;
			b = Exec(a);
			if(b == -1) then
				print (a);
				print("prog not found");
				break;
			endif;
		endif;
		print("prog name");
		read(a);
	endwhile;
	return 0;
}
