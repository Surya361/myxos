integer main()
{
	integer a,fd1,fd2,fd3;
	integer str1,str2;
	fd1 = Open("num1.dat");
	fd2 = Open("num2.dat");
	a = Create("num3.dat");
	fd3 = Open("num3.dat");
	a = Read(fd1,str1);
	a = Read(fd2,str2);
	while((str1 != -1) && (str2 != -1)) do
		if(str1 < str2) then
			a = Write(fd3,str1);
			a = Read(fd1,str1);
		else
			a = Write(fd3,str2);
			a = Read(fd2,str2);
		endif;
	endwhile;
	breakpoint;
	if(str1 == -1) then
		while(str2 != -1) do
			a = Write(fd3,str2);
			a = Read(fd2,str2);
		endwhile;
	else
		while(str1 != -1) do
			a = Write(fd3,str1);
			a = Read(fd1, str1);
		endwhile;
	endif;
	breakpoint;
	a = Close(fd1);
	a = Close(fd2);
	a = Close(fd3);
	return (0);
}
