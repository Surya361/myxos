decl
	integer status;
	integer status2;
	string status3;
enddecl

integer main()
{
	status=Create("myfile2.dat");
	print(status);
	status=Open("myfile2.dat");
	print(status);
	status2=Write(status,"agagaga");
	print(status2);
	status2=Write(status,"bagagaga");
	print(status2);
	status2=Write(status,"cagagaga");
	print(status2);
	status2=Seek(status,4);
	print(status2);
	status2=Read(status,status3);
	print(status2);
	print(status3);
	status2=Close(status);
	print(status2);
	return 0;
}
