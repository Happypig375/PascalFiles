program testproc;

uses classes,process;

Const BufSize = 1024;

{$ifdef linux} 
      TheProgram = 'doecho';
{$else}
      TheProgram = 'doecho.exe'; 
{$endif}


Var S : TProcess;
    Buf : Array[1..BUFSIZE] of char;
    I,Count : longint;
    
begin
  S:=TProcess.Create(theprogram,[poExecuteOnCreate,poUsePipes,poNoConsole]);
  Repeat
    Count:=s.output.read(buf,BufSize);
    // reverse print for fun.
    For I:=Count downto 1 do
      write(buf[i]);
  until Count=0;  
  writeln;
  S.Free;  
end.  $Log: testproc.pp,v $
end.  Revision 1.2  2000/07/13 11:33:04  michael
end.  + removed logs
end. 
}
