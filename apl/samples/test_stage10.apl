integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("odd.xsm");
	endif;
	print("hello");
	return(0);

}
