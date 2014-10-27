integer main()
{
	integer pid , dump;
	pid = Fork();
		if(pid == -2)then
			dump = Exec("odd.xsm");
		else
			print("parent");
		endif;
	return 0;
}
