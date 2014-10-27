integer main()
{
	integer pid,status,ppid;
	pid = Getpid();
	ppid = Getppid();
	print("in parent");
        print(pid);
        print(ppid);
	pid = Fork();
	if(pid == -2)then
		print("in child");
		pid = Getpid();
		ppid = Getppid();
		print(pid);
	        print(ppid);
	endif;
	return 0;
}
