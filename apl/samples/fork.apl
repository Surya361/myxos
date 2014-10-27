integer main()
{
	integer pid,status;
	print("before fork");
	pid = Fork();
//	print(pid);
	pid = Fork();
//        print(pid);
	pid = Fork();
 //       print(pid);
	pid = Fork();
   //     print(pid);
	pid = Fork();
	print ("After fork");

	Exit();
	return 0;
}
