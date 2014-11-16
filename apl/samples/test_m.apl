decl
	integer a[100],bubblesort(),len1;
enddecl
integer bubblesort()
{
	integer i,j,k;
	i=0;
	while i<len1-1 do
		j=0;
		while j<len1-1 do
			if a[j]>a[j+1] then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}

integer main()
{
	integer fd1,fd2,fd3,p,i,m,cid;
	i=0;
	cid=Fork();
	if(cid == -2) then
		fd1 = Open("num1.dat");
		while(p != -1) do
			m=Read(fd1,p);
			a[i] = p;
			i=i+1;
		endwhile;
		len1=i-1;
		p=Close(fd1);
		i=bubblesort();
		fd1 = Open("num1.dat");
		i=0;
		while(a[i] != -1) do
			p = a[i];
			p = Write(fd1,p);
			i=i+1;
		endwhile;
		p = Close(fd1);
	else
		p = Wait(cid);
		cid = Fork();
		if(cid == -2) then
			i=0;
			fd2 = Open("num2.dat");
			while(p != -1) do
				m=Read(fd2,p);
				a[i] = p;
				i=i+1;
			endwhile;
			len1=i-1;
			p=Close(fd2);
			i=bubblesort();
			fd2 = Open("num2.dat");
			i=0;
			while(a[i] != -1) do
				p = a[i];
				p = Write(fd2,p);
				i=i+1;
			endwhile;
			p = Close(fd2);
		else
			p=Wait(cid);
			p=Exec("merge.xsm");
		endif;
	endif;
	return(0);
}
