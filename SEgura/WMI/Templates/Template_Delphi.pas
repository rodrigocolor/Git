{ Syntax highlighting }
procedure TForm1.Button1Click(Sender: TObject);
var
  Number, I, X: Integer;
begin
  Number := 123 + $FF + Trunc(12.3);
  Caption := 'The Number is' + #32 + IntToStr(Number);
  {Search Match, Text Block}
  { Invalid breakpoint }
  for I := 0 to Number do {execution point}
  begin
    Inc(X); { Enabled breakpoint }
    Dec(X); { Disabled breakpoint }
    X := X + 1.0; {Error Line}
    Listbox1.Items.Add(IntToStr(X));
  end;
  {$R+}
  asm
    mov AX, 1234H
    mov Number, AX
  end;
  {$R-}
  {$WARNINGS OFF}
end;
