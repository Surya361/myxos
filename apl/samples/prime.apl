decl
	integer n;
enddecl
integer main()
{
	print("enter n");
	read(n);
	integer a;
	a = 2;
	integer b;
	integer flag;
	while(a <= n) do
		b = 2;
		flag = 1;
		while(b <= a/2) do
		if(a % b != 0) then
			b = b+1;
			flag = 1;
		else
			flag = 0;
			break;
		endif;
		endwhile;
		if(flag == 1) then
			print(a);
			a = a+1;
		else
			a = a+1;
		endif;
	endwhile;
	return 0;
}
