Var
	i,n: Integer;
	bool: Boolean;
Begin
	bool:=False;
	Readln(n);
	if n<=1 Then
			Begin
				bool:=True;
			End
	Else
		Begin
			for i:=2 to n div 2 Do
				Begin
					if n Mod i=0 Then
						Begin
							bool:=True;
						End;
					End;
				End;
			if bool Then
				Begin
					WriteLn('not simple')
				End
			Else
				Begin
					WriteLn('simple');
				End;
			End.