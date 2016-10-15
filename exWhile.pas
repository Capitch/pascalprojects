Program exWhile ;

var num:integer;

Begin

  num := 1;
  while (num <= 20) do
  begin
    if (num mod 2=0) then
    writeln(num);
    num := num +1
  end;
  
  readln;
  
End.
