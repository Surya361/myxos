decl
	integer status;
	integer file;
	integer file1;
	string test;
enddecl
integer main()
{
	status = Create("myfile1.dat");
	file = Open("myfile1.dat");
	print (file);
	status = Seek(file,10);
	print (status);
	status = Write(file,"Good");
	print (status);
	status = Seek(file,10);
	print (status);
	status = Read(file,test);
	print (status);
	print (test);
	return 0;
	
}
