{
    $Id: testgdb.pp,v 1.1 2002/01/29 17:54:49 peter Exp $
    Copyright (c) 1998 by Peter Vreman

    Small example program to the GDB

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}
program testgdb;
uses gdbcon;
var
  last,s,parafile : string;
  gdb : tgdbcontroller;
begin
  gdb.init;
  if paramcount=1 then
    parafile:=paramstr(1)
  else
    parafile:='test';
  gdb.loadfile(parafile);
  Writeln('Welcome to the pascal GDB...');
  Writeln('Type "q" to exit...');
  last:='';
  repeat
    write('>');
    readln(s);
    if (s='a') then
     gdb.starttrace
    else
     if (s='s') then
      gdb.tracestep
    else
     if (s='n') then
      gdb.tracenext
    else
     if (s='q') then
      break
    else
     begin
       if s='' then
         s:=last;
       GDB.Command(s);
       GDB.WriteErrorBuf;
       GDB.WriteOutputBuf;
       last:=s;
     end;
  until false;
  Writeln('End of pascal GDB...');
end.
{
  $Log: testgdb.pp,v $
  Revision 1.1  2002/01/29 17:54:49  peter
    * splitted to base and extra

  Revision 1.2  2000/07/13 11:33:16  michael
  + removed logs
 
}
